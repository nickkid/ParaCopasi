"""
This is a tool to parse the .cps file and edit the content.
"""
from utility.path_manipulate import expandabspath as eap
import xml.etree.ElementTree as ET
import os


class cpsmanager():
    task_type = {
        'tcs': 'Time Course Simulatin',
        'pe': 'Parameter Estimation',
        'ps': 'Parameter Scan',
        'opt': 'Optimization',
        'na': 'not available'
    }
    namespace_map = {
        '': "http://www.copasi.org/static/schema",
        'CopasiMT': "http://www.copasi.org/RDF/MiriamTerms#",
        'dcterms': "http://purl.org/dc/terms/",
        'rdf': "http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    }

    def __init__(self, path):
        for prefix, uri in cpsmanager.namespace_map.items():
            ET.register_namespace(prefix, uri)
        self.cpsfilepath = path
        self.tree = ET.parse(path)
        self.root = self.tree.getroot()
        self.model = None
        self.task = None

    @staticmethod
    def getFullTag(tag, namespace=namespace_map['']):
        return '{' + namespace + '}' + tag

    @staticmethod
    def displayElement(element):
        print(element.tag, ":", element.attrib)

    @staticmethod
    def genTempTarget(copy_target, number_of_copy):
        return copy_target + '.temp' + str(number_of_copy)

    @staticmethod
    def genTempCPS(CPS_FILENAME, number_of_copy):
        return CPS_FILENAME + '.temp' + str(number_of_copy)

    def parse(self):
        self.model = self.root.find('./{}'.format(self.getFullTag('Model')))
        for task in self.root.iterfind('./{}/{}'.format(
                self.getFullTag('ListOfTasks'), self.getFullTag('Task'))):
            if task.get('scheduled') == 'true':
                self.task = task
                break

    # def update(self, section=None, attribute=None, value=None):
    #   section.set(attribute, value)

    def set_pe_parameter(self, name, low=None, high=None, init=None):
        # print(name, low, high, init)
        for t in self.task.iterfind('./{0}/{1}/{1}[@name="FitItem"]'.format(
                self.getFullTag('Problem'),
                self.getFullTag('ParameterGroup'))):
            p = t.find('./{}[@name="ObjectCN"][@type="cn"]'.format(
                self.getFullTag('Parameter')))
            if name in p.get('value'):
                break
        if (low or high or init) is None:
            """
            >>> print(None or None or None)
            None
            >>> print(None or None or False)
            False
            >>> print(None or None or True)
            True
            """
            return False
        if low is not None:
            l = t.find('./{}[@name="LowerBound"]'.format(
                self.getFullTag('Parameter')))
            l.set('value', repr(low))
            # print(name,'lowerbound set')
        if high is not None:
            h = t.find('./{}[@name="UpperBound"]'.format(
                self.getFullTag('Parameter')))
            h.set('value', repr(high))
        if init is not None:
            start = t.find('./{}[@name="StartValue"]'.format(
                self.getFullTag('Parameter')))
            start.set('value', repr(init))
            # print(name,'start value set')
        return True

    def ensure_experiment_abspath(self, cpsfile_dir):
        experiment_xpath = './{}/{}[@name="Experiment Set"]'.format(
            self.getFullTag('Problem'), self.getFullTag('ParameterGroup'))
        exp_set = self.task.find(experiment_xpath)
        exp_file_xpath = './{}/{}[@name="File Name"][@type="file"]'.format(
            self.getFullTag('ParameterGroup'),
            self.getFullTag('Parameter'),
        )
        for file in exp_set.iterfind(exp_file_xpath):
            file.set('value',
                     os.path.join(cpsfile_dir, file.get('value')))

    def save(self, file):
        self.tree.write(file, encoding="UTF-8", xml_declaration=True)


# testbench
if __name__ == '__main__':
    CPS_FILENAME = 'example/models/two_step_sGC_activation.cps'
    cm = cpsmanager(CPS_FILENAME)
    cm.parse()
    # cm.set_pe_parameter('k1', low=1.4e8, high=1.4e12, init=1.4e9)
    cm.set_pe_parameter(*('k1', 1.4e8, 1.4e12, 1.4e9))
    cm.save('test.cps')
