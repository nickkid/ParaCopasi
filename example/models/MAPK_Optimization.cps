<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.27 (Build 217) (http://www.copasi.org) at 2021-03-03T01:34:40Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="27" versionDevel="217" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="MAPK cascade" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="µmol" type="deterministic" avogadroConstant="6.0221399999999997e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:8816754"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2005-02-10T23:39:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>raim@tbi.univie.ac.at</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Machne</vCard:Family>
                <vCard:Given>Rainer</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Vienna</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>pedro.mendes@manchester.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Mendes</vCard:Family>
                <vCard:Given>Pedro</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Manchester</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2008-12-04T01:05:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:biomodels.db:BIOMD0000000009"/>
        <rdf:li rdf:resource="urn:miriam:taxonomy:8355"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:reactome:REACT_634"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:obo.go:GO:0000165"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <html xmlns="http://www.w3.org/1999/xhtml"><head><meta name="qrichtext" content="1" /></head><body style="font-size:8pt;font-family:DejaVu Sans">
<p><span style="font-weight:600">MAPK cascade model</span> from Huang and Ferrell (1996) Ultrasensitivity in the mitogen-activated protein kinase cascade. <span style="font-style:italic">Proc. Natl. Acad. Sci. USA 93</span>, 10078-83 </p>
<p>This COPASI file simulates a time course and includes a network diagram that can be used to visualize the results (under Model/Biochemical/Diagrams). </p>
<p style="margin-top:14px"><span style="font-size:7pt">This model was altered trivially from the original in Biomodels (BIOMD0000000009), by renaming the species "MAPKKK activator" to E1 and "MAPKKK inactivator" to E2, to conform with the notation of the original paper. The diagram was constructed with SBW's Network Layout tool.</span></p>
<p style="margin-top:14px"><span style="font-size:7pt">This model originated from BioModels Database: A Database of Annotated Published Models. It is copyright (c) 2005-2008 The BioModels Team. For more information see the </span><a href="http://www.ebi.ac.uk/biomodels/legal.html"><span style="font-size:7pt">terms of use</span></a><span style="font-size:7pt">.</span>      </p>
<p>      </p>
</body></html>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-03T01:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="E1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-12-01T17:10:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:interpro:IPR003577" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="E2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_1">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-03T01:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="MAPKKK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P12965" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="P-MAPKKK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P12965" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="MAPKK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q05116" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="P-MAPKK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q05116" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="PP-MAPKK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q05116" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="MAPK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P26696" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="P-MAPK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P26696" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="PP-MAPK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P26696" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="MAPK-Pase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q90W58" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="MAPKK-Pase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_11">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-03T01:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="MAPKKK_E1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P12965" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="P-MAPKKK_E2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P12965" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="P-MAPKKK_MAPKK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P12965" />
        <rdf:li rdf:resource="urn:miriam:uniprot:Q05116" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="P-MAPKKK_P-MAPKK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P12965" />
        <rdf:li rdf:resource="urn:miriam:uniprot:Q05116" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="PP-MAPKK_MAPK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P26696" />
        <rdf:li rdf:resource="urn:miriam:uniprot:Q05116" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="PP-MAPKK_P-MAPK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P26696" />
        <rdf:li rdf:resource="urn:miriam:uniprot:Q05116" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="MAPKK-Pase_PP-MAPKK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q05116" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="MAPKK-Pase_P-MAPKK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q05116" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="MAPK-Pase_PP-MAPK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P26696" />
        <rdf:li rdf:resource="urn:miriam:uniprot:Q90W58" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="MAPK-Pase_P-MAPK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P26696" />
        <rdf:li rdf:resource="urn:miriam:uniprot:Q90W58" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="MAPKKK_phosphorylation_ratio" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-03T01:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[P-MAPKKK],Reference=Concentration>/(&lt;CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[P-MAPKKK],Reference=Concentration>+&lt;CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPKKK],Reference=Concentration>)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="binding of MAPKKK activator" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:reactome:REACT_996" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:obo.go:GO:0031435" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5388" name="k1" value="1000"/>
          <Constant key="Parameter_5387" name="k2" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5388"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_2"/>
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5387"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="MAPKKK activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:reactome:REACT_525" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.7.11.1" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0000185" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0008349" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5391" name="k1" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5391"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="binding of MAPKKK inactivator" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:obo.go:GO:0031435" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5389" name="k1" value="1000"/>
          <Constant key="Parameter_5392" name="k2" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5389"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_3"/>
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5392"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="MAPKKK inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.1.3.16" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0006470" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0051390" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5393" name="k1" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5393"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="binding P-MAPKKK and MAPKK" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:reactome:REACT_143" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0031434" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0031435" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5397" name="k1" value="1000"/>
          <Constant key="Parameter_5398" name="k2" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5397"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_4"/>
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5398"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="phosphorylation of MAPKK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:reactome:REACT_614" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.7.11.25" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0004709" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0006468" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5399" name="k1" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5399"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="binding MAPKK-Pase and P-MAPKK" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:obo.go:GO:0031434" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5394" name="k1" value="1000"/>
          <Constant key="Parameter_5396" name="k2" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5394"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_5"/>
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5396"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="dephosphorylation of P-MAPKK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.1.3.16" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0006470" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5395" name="k1" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5395"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="binding P-MAPKKK and P-MAPKK" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:reactome:REACT_143" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0031434" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0031435" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5400" name="k1" value="1000"/>
          <Constant key="Parameter_5401" name="k2" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5400"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_5"/>
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5401"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="phosphorylation of P-MAPKK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:reactome:REACT_614" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.7.11.25" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0000186" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0004709" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0006468" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5402" name="k1" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5402"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="binding MAPKK-Pase and PP-MAPKK" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:obo.go:GO:0031434" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5436" name="k1" value="1000"/>
          <Constant key="Parameter_5437" name="k2" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5436"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_6"/>
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5437"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="dephosphorylation of PP-MAPKK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.1.3.16" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0006470" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0051389" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3317" name="k1" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_3317"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="binding MAPK and PP-MAPKK" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:reactome:REACT_1780" />
        <rdf:li rdf:resource="urn:miriam:reactome:REACT_495" />
      </rdf:Bag>
    </CopasiMT:hasVersion>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0031434" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0051019" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5439" name="k1" value="1000"/>
          <Constant key="Parameter_5440" name="k2" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5439"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_7"/>
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5440"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="phosphorylation of MAPK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:reactome:REACT_136" />
        <rdf:li rdf:resource="urn:miriam:reactome:REACT_2247" />
      </rdf:Bag>
    </CopasiMT:hasVersion>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.7.12.2" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0004708" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0006468" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3319" name="k1" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_3319"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="binding MAPK-Pase and P-MAPK" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:obo.go:GO:0051019" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3318" name="k1" value="1000"/>
          <Constant key="Parameter_3316" name="k2" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_3318"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_8"/>
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_3316"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="dephosphorylation of P-MAPK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.1.3.16" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0006470" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5438" name="k1" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5438"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="binding PP-MAPKK and P-MAPK" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:reactome:REACT_1780" />
        <rdf:li rdf:resource="urn:miriam:reactome:REACT_495" />
      </rdf:Bag>
    </CopasiMT:hasVersion>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0031434" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0051019" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5441" name="k1" value="1000"/>
          <Constant key="Parameter_5434" name="k2" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5441"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_8"/>
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5434"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="phosphorylation of P-MAPK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:reactome:REACT_136" />
        <rdf:li rdf:resource="urn:miriam:reactome:REACT_2247" />
      </rdf:Bag>
    </CopasiMT:hasVersion>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.7.12.2" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0000187" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0004708" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0006468" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5432" name="k1" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5432"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="binding MAPK-Pase and PP-MAPK" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:obo.go:GO:0051019" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5431" name="k1" value="1000"/>
          <Constant key="Parameter_5435" name="k2" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5431"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_9"/>
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5435"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="dephosphorylation of PP-MAPK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.1.3.16" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0000188" />
        <rdf:li rdf:resource="urn:miriam:obo.go:GO:0006470" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5433" name="k1" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5433"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-03T01:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=MAPK cascade" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment]" value="3.9999999999999999e-12" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[E1]" value="72.265701480000004" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[E2]" value="722.65697999999975" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPKKK]" value="7226.5697999999993" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[P-MAPKKK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPKK]" value="2890627.9199999995" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[P-MAPKK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[PP-MAPKK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPK]" value="2890627.9199999995" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[P-MAPK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[PP-MAPK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPK-Pase]" value="289062.79199999996" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPKK-Pase]" value="722.65697999999975" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPKKK_E1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[P-MAPKKK_E2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[P-MAPKKK_MAPKK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[P-MAPKKK_P-MAPKK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[PP-MAPKK_MAPK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[PP-MAPKK_P-MAPK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPKK-Pase_PP-MAPKK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPKK-Pase_P-MAPKK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPK-Pase_PP-MAPK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPK-Pase_P-MAPK]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Values[MAPKKK_phosphorylation_ratio]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding of MAPKKK activator]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding of MAPKKK activator],ParameterGroup=Parameters,Parameter=k1" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding of MAPKKK activator],ParameterGroup=Parameters,Parameter=k2" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[MAPKKK activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[MAPKKK activation],ParameterGroup=Parameters,Parameter=k1" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding of MAPKKK inactivator]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding of MAPKKK inactivator],ParameterGroup=Parameters,Parameter=k1" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding of MAPKKK inactivator],ParameterGroup=Parameters,Parameter=k2" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[MAPKKK inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[MAPKKK inactivation],ParameterGroup=Parameters,Parameter=k1" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding P-MAPKKK and MAPKK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding P-MAPKKK and MAPKK],ParameterGroup=Parameters,Parameter=k1" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding P-MAPKKK and MAPKK],ParameterGroup=Parameters,Parameter=k2" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[phosphorylation of MAPKK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[phosphorylation of MAPKK],ParameterGroup=Parameters,Parameter=k1" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPKK-Pase and P-MAPKK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPKK-Pase and P-MAPKK],ParameterGroup=Parameters,Parameter=k1" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPKK-Pase and P-MAPKK],ParameterGroup=Parameters,Parameter=k2" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[dephosphorylation of P-MAPKK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[dephosphorylation of P-MAPKK],ParameterGroup=Parameters,Parameter=k1" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding P-MAPKKK and P-MAPKK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding P-MAPKKK and P-MAPKK],ParameterGroup=Parameters,Parameter=k1" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding P-MAPKKK and P-MAPKK],ParameterGroup=Parameters,Parameter=k2" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[phosphorylation of P-MAPKK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[phosphorylation of P-MAPKK],ParameterGroup=Parameters,Parameter=k1" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPKK-Pase and PP-MAPKK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPKK-Pase and PP-MAPKK],ParameterGroup=Parameters,Parameter=k1" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPKK-Pase and PP-MAPKK],ParameterGroup=Parameters,Parameter=k2" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[dephosphorylation of PP-MAPKK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[dephosphorylation of PP-MAPKK],ParameterGroup=Parameters,Parameter=k1" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPK and PP-MAPKK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPK and PP-MAPKK],ParameterGroup=Parameters,Parameter=k1" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPK and PP-MAPKK],ParameterGroup=Parameters,Parameter=k2" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[phosphorylation of MAPK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[phosphorylation of MAPK],ParameterGroup=Parameters,Parameter=k1" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPK-Pase and P-MAPK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPK-Pase and P-MAPK],ParameterGroup=Parameters,Parameter=k1" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPK-Pase and P-MAPK],ParameterGroup=Parameters,Parameter=k2" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[dephosphorylation of P-MAPK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[dephosphorylation of P-MAPK],ParameterGroup=Parameters,Parameter=k1" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding PP-MAPKK and P-MAPK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding PP-MAPKK and P-MAPK],ParameterGroup=Parameters,Parameter=k1" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding PP-MAPKK and P-MAPK],ParameterGroup=Parameters,Parameter=k2" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[phosphorylation of P-MAPK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[phosphorylation of P-MAPK],ParameterGroup=Parameters,Parameter=k1" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPK-Pase and PP-MAPK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPK-Pase and PP-MAPK],ParameterGroup=Parameters,Parameter=k1" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPK-Pase and PP-MAPK],ParameterGroup=Parameters,Parameter=k2" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=MAPK cascade,Vector=Reactions[dephosphorylation of PP-MAPK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=MAPK cascade,Vector=Reactions[dephosphorylation of PP-MAPK],ParameterGroup=Parameters,Parameter=k1" value="150" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 289062.79199999996 722.65697999999975 0 0 7226.5697999999993 0 0 722.65697999999975 0 0 0 72.265701480000004 2890627.9199999995 0 2890627.9199999995 0 0 0 0 0 0 3.9999999999999999e-12 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1000"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="1000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_10" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="0"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_9" name="Optimization" type="optimization" scheduled="true" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Sensitivities]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          &lt;CN=Root,Vector=TaskList[Sensitivities],Problem=Sensitivities,Array=Scaled sensitivities array[.]>
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[MAPKKK activation],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[MAPKKK inactivation],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="900"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPK and PP-MAPKK],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1100"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPK and PP-MAPKK],ParameterGroup=Parameters,Parameter=k2,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="900"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPK-Pase and P-MAPK],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1100"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPK-Pase and P-MAPK],ParameterGroup=Parameters,Parameter=k2,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="900"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPK-Pase and PP-MAPK],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1100"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPK-Pase and PP-MAPK],ParameterGroup=Parameters,Parameter=k2,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="900"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPKK-Pase and P-MAPKK],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1100"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPKK-Pase and P-MAPKK],ParameterGroup=Parameters,Parameter=k2,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="900"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPKK-Pase and PP-MAPKK],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1100"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding MAPKK-Pase and PP-MAPKK],ParameterGroup=Parameters,Parameter=k2,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="900"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding P-MAPKKK and MAPKK],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1100"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding P-MAPKKK and MAPKK],ParameterGroup=Parameters,Parameter=k2,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="900"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding P-MAPKKK and P-MAPKK],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1100"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding P-MAPKKK and P-MAPKK],ParameterGroup=Parameters,Parameter=k2,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="900"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding PP-MAPKK and P-MAPK],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1100"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding PP-MAPKK and P-MAPK],ParameterGroup=Parameters,Parameter=k2,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="900"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding of MAPKKK activator],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1100"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding of MAPKKK activator],ParameterGroup=Parameters,Parameter=k2,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="900"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding of MAPKKK inactivator],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1100"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding of MAPKKK inactivator],ParameterGroup=Parameters,Parameter=k2,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[dephosphorylation of P-MAPK],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[dephosphorylation of P-MAPKK],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[dephosphorylation of PP-MAPK],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[dephosphorylation of PP-MAPKK],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[phosphorylation of MAPK],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[phosphorylation of MAPKK],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[phosphorylation of P-MAPK],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[phosphorylation of P-MAPKK],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="150"/>
            <Parameter name="UpperBound" type="cn" value="165"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Genetic Algorithm" type="GeneticAlgorithm">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Mutation Variance" type="float" value="0.10000000000000001"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_8" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
      </Method>
    </Task>
    <Task key="Task_4" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[PP-MAPK],Reference=Concentration"/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="1"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value="CN=Root,Model=MAPK cascade,Vector=Reactions[binding of MAPKKK activator],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="1"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_2" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_1" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_14" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_9" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_8" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[E1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[E1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[E2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[E2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MAPKKK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPKKK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P-MAPKKK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[P-MAPKKK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MAPKK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPKK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P-MAPKK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[P-MAPKK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PP-MAPKK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[PP-MAPKK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MAPK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P-MAPK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[P-MAPK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PP-MAPK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[PP-MAPK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MAPK-Pase]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPK-Pase],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MAPKK-Pase]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPKK-Pase],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MAPKKK_E1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPKKK_E1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P-MAPKKK_E2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[P-MAPKKK_E2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P-MAPKKK_MAPKK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[P-MAPKKK_MAPKK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P-MAPKKK_P-MAPKK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[P-MAPKKK_P-MAPKK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PP-MAPKK_MAPK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[PP-MAPKK_MAPK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PP-MAPKK_P-MAPK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[PP-MAPKK_P-MAPK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MAPKK-Pase_PP-MAPKK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPKK-Pase_PP-MAPKK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MAPKK-Pase_P-MAPKK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPKK-Pase_P-MAPKK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MAPK-Pase_PP-MAPK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPK-Pase_PP-MAPK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MAPK-Pase_P-MAPK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Compartments[compartment],Vector=Metabolites[MAPK-Pase_P-MAPK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[MAPKKK_phosphorylation_ratio]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=MAPK cascade,Vector=Values[MAPKKK_phosphorylation_ratio],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_2" name="layout_0">
      <Dimensions width="1567.8199999999999" height="966.60400000000004"/>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_3" name="sGlyph_0" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="473.524" y="187.12799999999999"/>
            <Dimensions width="41" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_4" name="sGlyph_1" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="555.84000000000003" y="185.60400000000001"/>
            <Dimensions width="41" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_5" name="sGlyph_2" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="508.91000000000003" y="50"/>
            <Dimensions width="73" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_6" name="sGlyph_3" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="465.28300000000002" y="370.03100000000001"/>
            <Dimensions width="89" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_7" name="sGlyph_4" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="114.538" y="515.23099999999999"/>
            <Dimensions width="65" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="sGlyph_5" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="459.904" y="601.12"/>
            <Dimensions width="81" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_9" name="sGlyph_6" metabolite="Metabolite_6">
          <BoundingBox>
            <Position x="759.60400000000004" y="573.26900000000001"/>
            <Dimensions width="89" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_10" name="sGlyph_7" metabolite="Metabolite_7">
          <BoundingBox>
            <Position x="1104.97" y="782.60000000000002"/>
            <Dimensions width="57" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_11" name="sGlyph_8" metabolite="Metabolite_8">
          <BoundingBox>
            <Position x="1161.02" y="661.00800000000004"/>
            <Dimensions width="73" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_12" name="sGlyph_9" metabolite="Metabolite_9">
          <BoundingBox>
            <Position x="1129.5999999999999" y="497.67899999999997"/>
            <Dimensions width="81" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_13" name="sGlyph_10" metabolite="Metabolite_10">
          <BoundingBox>
            <Position x="1420.8199999999999" y="673.55600000000004"/>
            <Dimensions width="97" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_14" name="sGlyph_11" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="439.67899999999997" y="864.60400000000004"/>
            <Dimensions width="105" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_15" name="sGlyph_12" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="267.66699999999997" y="190.41900000000001"/>
            <Dimensions width="97" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_16" name="sGlyph_13" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="697.745" y="180.91999999999999"/>
            <Dimensions width="113" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_17" name="sGlyph_14" metabolite="Metabolite_14">
          <BoundingBox>
            <Position x="267.74000000000001" y="568.43799999999999"/>
            <Dimensions width="137" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_18" name="sGlyph_15" metabolite="Metabolite_15">
          <BoundingBox>
            <Position x="565.78800000000001" y="535.44600000000003"/>
            <Dimensions width="153" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_19" name="sGlyph_16" metabolite="Metabolite_16">
          <BoundingBox>
            <Position x="826.20000000000005" y="764.86099999999999"/>
            <Dimensions width="129" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_20" name="sGlyph_17" metabolite="Metabolite_17">
          <BoundingBox>
            <Position x="960.35599999999999" y="402.01900000000001"/>
            <Dimensions width="145" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_21" name="sGlyph_18" metabolite="Metabolite_18">
          <BoundingBox>
            <Position x="591.58100000000002" y="783.39400000000001"/>
            <Dimensions width="177" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_22" name="sGlyph_19" metabolite="Metabolite_19">
          <BoundingBox>
            <Position x="50" y="735.14499999999998"/>
            <Dimensions width="169" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_23" name="sGlyph_20" metabolite="Metabolite_20">
          <BoundingBox>
            <Position x="1290.3599999999999" y="399.98599999999999"/>
            <Dimensions width="161" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_24" name="sGlyph_21" metabolite="Metabolite_21">
          <BoundingBox>
            <Position x="1248.8900000000001" y="891.60400000000004"/>
            <Dimensions width="153" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_25" name="rGlyph_0" reaction="Reaction_0">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="447.24799999999999" y="133.142"/>
                <End x="447.24799999999999" y="133.142"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_26" name="curve00" metaboliteGlyph="Layout_5" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="526.91499999999996" y="81.940899999999999"/>
                    <End x="447.24799999999999" y="133.142"/>
                    <BasePoint1 x="510.08999999999997" y="92.754099999999994"/>
                    <BasePoint2 x="472.24299999999999" y="132.62899999999999"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_27" name="curve01" metaboliteGlyph="Layout_3" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="487.11200000000002" y="177.64699999999999"/>
                    <End x="447.24799999999999" y="133.142"/>
                    <BasePoint1 x="473.76799999999997" y="162.749"/>
                    <BasePoint2 x="472.24299999999999" y="132.62899999999999"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_28" name="curve00" metaboliteGlyph="Layout_15" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="447.24799999999999" y="133.142"/>
                    <End x="344.56200000000001" y="185.58500000000001"/>
                    <BasePoint1 x="422.25400000000002" y="133.65600000000001"/>
                    <BasePoint2 x="362.37400000000002" y="176.489"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_29" name="rGlyph_1" reaction="Reaction_1">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="452.24799999999999" y="291.142"/>
                <End x="452.24799999999999" y="291.142"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_30" name="curve10" metaboliteGlyph="Layout_15" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="343.67200000000003" y="221.53100000000001"/>
                    <End x="452.24799999999999" y="291.142"/>
                    <BasePoint1 x="360.50900000000001" y="232.32599999999999"/>
                    <BasePoint2 x="431.25900000000001" y="277.56099999999998"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_31" name="curve10" metaboliteGlyph="Layout_3" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="452.24799999999999" y="291.142"/>
                    <End x="490.23700000000002" y="221.93799999999999"/>
                    <BasePoint1 x="473.238" y="304.72300000000001"/>
                    <BasePoint2 x="480.613" y="239.47"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_32" name="curve11" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="452.24799999999999" y="291.142"/>
                    <End x="499.96499999999997" y="361.10599999999999"/>
                    <BasePoint1 x="473.238" y="304.72300000000001"/>
                    <BasePoint2 x="488.69600000000003" y="344.58300000000003"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_33" name="rGlyph_2" reaction="Reaction_2">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="600.24800000000005" y="301.142"/>
                <End x="600.24800000000005" y="301.142"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_34" name="curve20" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="526.26499999999999" y="362.15499999999997"/>
                    <End x="600.24800000000005" y="301.142"/>
                    <BasePoint1 x="541.69500000000005" y="349.43000000000001"/>
                    <BasePoint2 x="575.66899999999998" y="296.57400000000001"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_35" name="curve21" metaboliteGlyph="Layout_4" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="577.06299999999999" y="221.13999999999999"/>
                    <End x="600.24800000000005" y="301.142"/>
                    <BasePoint1 x="582.63" y="240.34999999999999"/>
                    <BasePoint2 x="575.66899999999998" y="296.57400000000001"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_36" name="curve20" metaboliteGlyph="Layout_16" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="600.24800000000005" y="301.142"/>
                    <End x="733.649" y="212.642"/>
                    <BasePoint1 x="624.827" y="305.70999999999998"/>
                    <BasePoint2 x="716.98299999999995" y="223.69800000000001"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_37" name="rGlyph_3" reaction="Reaction_3">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="627.24800000000005" y="129.142"/>
                <End x="627.24800000000005" y="129.142"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_38" name="curve30" metaboliteGlyph="Layout_16" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="720.33699999999999" y="176.60400000000001"/>
                    <End x="627.24800000000005" y="129.142"/>
                    <BasePoint1 x="702.51900000000001" y="167.52000000000001"/>
                    <BasePoint2 x="649.50300000000004" y="140.53200000000001"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_39" name="curve30" metaboliteGlyph="Layout_4" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="627.24800000000005" y="129.142"/>
                    <End x="585.404" y="176.65299999999999"/>
                    <BasePoint1 x="604.99400000000003" y="117.752"/>
                    <BasePoint2 x="598.62300000000005" y="161.64400000000001"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_40" name="curve31" metaboliteGlyph="Layout_5" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="627.24800000000005" y="129.142"/>
                    <End x="566.56600000000003" y="81.957999999999998"/>
                    <BasePoint1 x="604.99400000000003" y="117.752"/>
                    <BasePoint2 x="582.35400000000004" y="94.2346"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_41" name="rGlyph_4" reaction="Reaction_4">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="327.24799999999999" y="468.142"/>
                <End x="327.24799999999999" y="468.142"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_42" name="curve40" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="184.29900000000001" y="511.88900000000001"/>
                    <End x="327.24799999999999" y="468.142"/>
                    <BasePoint1 x="203.423" y="506.03699999999998"/>
                    <BasePoint2 x="330.22699999999998" y="443.31999999999999"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_43" name="curve41" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="465.75799999999998" y="398.29500000000002"/>
                    <End x="327.24799999999999" y="468.142"/>
                    <BasePoint1 x="447.89999999999998" y="407.30000000000001"/>
                    <BasePoint2 x="330.22699999999998" y="443.31999999999999"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_44" name="curve40" metaboliteGlyph="Layout_17" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="327.24799999999999" y="468.142"/>
                    <End x="333.803" y="558.24699999999996"/>
                    <BasePoint1 x="324.26999999999998" y="492.964"/>
                    <BasePoint2 x="332.35199999999998" y="538.29999999999995"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_45" name="rGlyph_5" reaction="Reaction_5">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="377.24799999999999" y="514.14200000000005"/>
                <End x="377.24799999999999" y="514.14200000000005"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_46" name="curve50" metaboliteGlyph="Layout_17" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="349.42200000000003" y="559.58500000000004"/>
                    <End x="377.24799999999999" y="514.14200000000005"/>
                    <BasePoint1 x="359.86599999999999" y="542.52800000000002"/>
                    <BasePoint2 x="364.05599999999998" y="535.37800000000004"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_47" name="curve50" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="377.24799999999999" y="514.14200000000005"/>
                    <End x="483.435" y="592.822"/>
                    <BasePoint1 x="390.44" y="492.90600000000001"/>
                    <BasePoint2 x="467.36599999999999" y="580.91499999999996"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_48" name="curve51" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="377.24799999999999" y="514.14200000000005"/>
                    <End x="490.84100000000001" y="401.86000000000001"/>
                    <BasePoint1 x="390.44" y="492.90600000000001"/>
                    <BasePoint2 x="476.61700000000002" y="415.92000000000002"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_49" name="rGlyph_6" reaction="Reaction_6">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="392.24799999999999" y="695.14200000000005"/>
                <End x="392.24799999999999" y="695.14200000000005"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_50" name="curve60" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="482.47000000000003" y="632.49400000000003"/>
                    <End x="392.24799999999999" y="695.14200000000005"/>
                    <BasePoint1 x="466.04199999999997" y="643.90099999999995"/>
                    <BasePoint2 x="414.84199999999998" y="705.84400000000005"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_51" name="curve61" metaboliteGlyph="Layout_14" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="483.089" y="855.048"/>
                    <End x="392.24799999999999" y="695.14200000000005"/>
                    <BasePoint1 x="473.20999999999998" y="837.65800000000002"/>
                    <BasePoint2 x="414.84199999999998" y="705.84400000000005"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_52" name="curve60" metaboliteGlyph="Layout_22" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="392.24799999999999" y="695.14200000000005"/>
                    <End x="189.90799999999999" y="732.55600000000004"/>
                    <BasePoint1 x="369.65499999999997" y="684.44000000000005"/>
                    <BasePoint2 x="209.57499999999999" y="728.91999999999996"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_53" name="rGlyph_7" reaction="Reaction_7">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="229.24799999999999" y="686.14200000000005"/>
                <End x="229.24799999999999" y="686.14200000000005"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_54" name="curve70" metaboliteGlyph="Layout_22" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="162.613" y="729.66300000000001"/>
                    <End x="229.24799999999999" y="686.14200000000005"/>
                    <BasePoint1 x="179.358" y="718.726"/>
                    <BasePoint2 x="208.27699999999999" y="699.75099999999998"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_55" name="curve70" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="229.24799999999999" y="686.14200000000005"/>
                    <End x="162.036" y="548.29700000000003"/>
                    <BasePoint1 x="250.22" y="672.53300000000002"/>
                    <BasePoint2 x="170.80199999999999" y="566.274"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_56" name="curve71" metaboliteGlyph="Layout_14" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="229.24799999999999" y="686.14200000000005"/>
                    <End x="471.57799999999997" y="857.72500000000002"/>
                    <BasePoint1 x="250.22" y="672.53300000000002"/>
                    <BasePoint2 x="455.25599999999997" y="846.16800000000001"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_57" name="rGlyph_8" reaction="Reaction_8">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="524.24800000000005" y="485.142"/>
                <End x="524.24800000000005" y="485.142"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_58" name="curve80" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="502.40199999999999" y="590.14300000000003"/>
                    <End x="524.24800000000005" y="485.142"/>
                    <BasePoint1 x="506.476" y="570.56299999999999"/>
                    <BasePoint2 x="503.79300000000001" y="499.51600000000002"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_59" name="curve81" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="509.63099999999997" y="405.12299999999999"/>
                    <End x="524.24800000000005" y="485.142"/>
                    <BasePoint1 x="513.22500000000002" y="424.798"/>
                    <BasePoint2 x="503.79300000000001" y="499.51600000000002"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_60" name="curve80" metaboliteGlyph="Layout_18" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="524.24800000000005" y="485.142"/>
                    <End x="620.327" y="529.03899999999999"/>
                    <BasePoint1 x="544.70299999999997" y="470.76900000000001"/>
                    <BasePoint2 x="602.13599999999997" y="520.72699999999998"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_61" name="rGlyph_9" reaction="Reaction_9">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="721.24800000000005" y="436.142"/>
                <End x="721.24800000000005" y="436.142"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_62" name="curve90" metaboliteGlyph="Layout_18" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="657.95799999999997" y="526.93200000000002"/>
                    <End x="721.24800000000005" y="436.142"/>
                    <BasePoint1 x="669.39499999999998" y="510.52499999999998"/>
                    <BasePoint2 x="706.875" y="456.59699999999998"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_63" name="curve90" metaboliteGlyph="Layout_9" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="721.24800000000005" y="436.142"/>
                    <End x="796.45100000000002" y="563.89099999999996"/>
                    <BasePoint1 x="735.62199999999996" y="415.68700000000001"/>
                    <BasePoint2 x="786.30499999999995" y="546.65599999999995"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_64" name="curve91" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="721.24800000000005" y="436.142"/>
                    <End x="565.149" y="391.54399999999998"/>
                    <BasePoint1 x="735.62199999999996" y="415.68700000000001"/>
                    <BasePoint2 x="584.38" y="397.03899999999999"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_65" name="rGlyph_10" reaction="Reaction_10">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="680.24800000000005" y="712.14200000000005"/>
                <End x="680.24800000000005" y="712.14200000000005"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_66" name="curve100" metaboliteGlyph="Layout_9" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="784.01199999999994" y="605.04399999999998"/>
                    <End x="680.24800000000005" y="712.14200000000005"/>
                    <BasePoint1 x="770.09500000000003" y="619.40800000000002"/>
                    <BasePoint2 x="658.60500000000002" y="724.65499999999997"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_67" name="curve101" metaboliteGlyph="Layout_14" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="512.64599999999996" y="857.41399999999999"/>
                    <End x="680.24800000000005" y="712.14200000000005"/>
                    <BasePoint1 x="527.75900000000001" y="844.31399999999996"/>
                    <BasePoint2 x="658.60500000000002" y="724.65499999999997"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_68" name="curve100" metaboliteGlyph="Layout_21" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="680.24800000000005" y="712.14200000000005"/>
                    <End x="685.42700000000002" y="773.38199999999995"/>
                    <BasePoint1 x="701.89200000000005" y="699.63"/>
                    <BasePoint2 x="683.74199999999996" y="753.45399999999995"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_69" name="rGlyph_11" reaction="Reaction_11">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="573.24800000000005" y="696.14200000000005"/>
                <End x="573.24800000000005" y="696.14200000000005"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_70" name="curve110" metaboliteGlyph="Layout_21" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="660.86500000000001" y="776.39800000000002"/>
                    <End x="573.24800000000005" y="696.14200000000005"/>
                    <BasePoint1 x="646.11699999999996" y="762.88900000000001"/>
                    <BasePoint2 x="591.59900000000005" y="713.12099999999998"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_71" name="curve110" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="573.24800000000005" y="696.14200000000005"/>
                    <End x="518.44500000000005" y="632.99099999999999"/>
                    <BasePoint1 x="554.89800000000002" y="679.16399999999999"/>
                    <BasePoint2 x="531.553" y="648.096"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_72" name="curve111" metaboliteGlyph="Layout_14" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="573.24800000000005" y="696.14200000000005"/>
                    <End x="499.27100000000002" y="854.61000000000001"/>
                    <BasePoint1 x="554.89800000000002" y="679.16399999999999"/>
                    <BasePoint2 x="507.73099999999999" y="836.48699999999997"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_73" name="rGlyph_12" reaction="Reaction_12">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="921.24800000000005" y="678.14200000000005"/>
                <End x="921.24800000000005" y="678.14200000000005"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_74" name="curve120" metaboliteGlyph="Layout_10" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1104.6199999999999" y="777.09199999999998"/>
                    <End x="921.24800000000005" y="678.14200000000005"/>
                    <BasePoint1 x="1087.02" y="767.59400000000005"/>
                    <BasePoint2 x="945.54600000000005" y="684.02499999999998"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_75" name="curve121" metaboliteGlyph="Layout_9" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="831.43200000000002" y="603.88900000000001"/>
                    <End x="921.24800000000005" y="678.14200000000005"/>
                    <BasePoint1 x="846.846" y="616.63300000000004"/>
                    <BasePoint2 x="945.54600000000005" y="684.02499999999998"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_76" name="curve120" metaboliteGlyph="Layout_19" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="921.24800000000005" y="678.14200000000005"/>
                    <End x="892.75900000000001" y="754.15499999999997"/>
                    <BasePoint1 x="896.95000000000005" y="672.25900000000001"/>
                    <BasePoint2 x="899.77800000000002" y="735.42700000000002"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_77" name="rGlyph_13" reaction="Reaction_13">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="996.24800000000005" y="678.14200000000005"/>
                <End x="996.24800000000005" y="678.14200000000005"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_78" name="curve130" metaboliteGlyph="Layout_19" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="912.51400000000001" y="757.27099999999996"/>
                    <End x="996.24800000000005" y="678.14200000000005"/>
                    <BasePoint1 x="927.04999999999995" y="743.53499999999997"/>
                    <BasePoint2 x="978.05899999999997" y="695.29200000000003"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_79" name="curve130" metaboliteGlyph="Layout_11" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="996.24800000000005" y="678.14200000000005"/>
                    <End x="1150.27" y="669.51599999999996"/>
                    <BasePoint1 x="1014.4400000000001" y="660.99199999999996"/>
                    <BasePoint2 x="1130.3" y="670.63400000000001"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_80" name="curve131" metaboliteGlyph="Layout_9" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="996.24800000000005" y="678.14200000000005"/>
                    <End x="850.64800000000002" y="601.553"/>
                    <BasePoint1 x="1014.4400000000001" y="660.99199999999996"/>
                    <BasePoint2 x="868.34900000000005" y="610.86400000000003"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_81" name="rGlyph_14" reaction="Reaction_14">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1349.25" y="715.14200000000005"/>
                <End x="1349.25" y="715.14200000000005"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_82" name="curve140" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1243.1500000000001" y="678.55899999999997"/>
                    <End x="1349.25" y="715.14200000000005"/>
                    <BasePoint1 x="1262.0599999999999" y="685.07899999999995"/>
                    <BasePoint2 x="1339.0899999999999" y="692.29700000000003"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_83" name="curve141" metaboliteGlyph="Layout_13" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1410.27" y="687.77599999999995"/>
                    <End x="1349.25" y="715.14200000000005"/>
                    <BasePoint1 x="1392.02" y="695.96000000000004"/>
                    <BasePoint2 x="1339.0899999999999" y="692.29700000000003"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_84" name="curve140" metaboliteGlyph="Layout_24" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1349.25" y="715.14200000000005"/>
                    <End x="1329.3" y="881.35500000000002"/>
                    <BasePoint1 x="1359.4000000000001" y="737.98699999999997"/>
                    <BasePoint2 x="1331.6900000000001" y="861.49800000000005"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_85" name="rGlyph_15" reaction="Reaction_15">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1264.25" y="818.14200000000005"/>
                <End x="1264.25" y="818.14200000000005"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_86" name="curve150" metaboliteGlyph="Layout_24" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1310.46" y="882.98900000000003"/>
                    <End x="1264.25" y="818.14200000000005"/>
                    <BasePoint1 x="1298.8499999999999" y="866.702"/>
                    <BasePoint2 x="1278.8199999999999" y="838.45299999999997"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_87" name="curve150" metaboliteGlyph="Layout_10" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1264.25" y="818.14200000000005"/>
                    <End x="1171.24" y="794.55899999999997"/>
                    <BasePoint1 x="1249.6700000000001" y="797.83100000000002"/>
                    <BasePoint2 x="1190.6300000000001" y="799.47500000000002"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_88" name="curve151" metaboliteGlyph="Layout_13" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1264.25" y="818.14200000000005"/>
                    <End x="1433.3699999999999" y="702.73900000000003"/>
                    <BasePoint1 x="1249.6700000000001" y="797.83100000000002"/>
                    <BasePoint2 x="1416.8499999999999" y="714.01199999999994"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_89" name="rGlyph_16" reaction="Reaction_16">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1019.25" y="564.14200000000005"/>
                <End x="1019.25" y="564.14200000000005"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_90" name="curve160" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1161.1500000000001" y="655.99400000000003"/>
                    <End x="1019.25" y="564.14200000000005"/>
                    <BasePoint1 x="1144.3599999999999" y="645.12599999999998"/>
                    <BasePoint2 x="1012.4" y="588.18700000000001"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_91" name="curve161" metaboliteGlyph="Layout_9" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="859.24699999999996" y="585.32899999999995"/>
                    <End x="1019.25" y="564.14200000000005"/>
                    <BasePoint1 x="879.07299999999998" y="582.70299999999997"/>
                    <BasePoint2 x="1012.4" y="588.18700000000001"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_92" name="curve160" metaboliteGlyph="Layout_20" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1019.25" y="564.14200000000005"/>
                    <End x="1030.79" y="437.13200000000001"/>
                    <BasePoint1 x="1026.0899999999999" y="540.09699999999998"/>
                    <BasePoint2 x="1028.98" y="457.05000000000001"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_93" name="rGlyph_17" reaction="Reaction_17">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="923.24800000000005" y="504.142"/>
                <End x="923.24800000000005" y="504.142"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_94" name="curve170" metaboliteGlyph="Layout_20" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1009.51" y="433.48200000000003"/>
                    <End x="923.24800000000005" y="504.142"/>
                    <BasePoint1 x="994.04300000000001" y="446.15499999999997"/>
                    <BasePoint2 x="942.61300000000006" y="488.33100000000002"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_95" name="curve170" metaboliteGlyph="Layout_9" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="923.24800000000005" y="504.142"/>
                    <End x="831.596" y="567.63599999999997"/>
                    <BasePoint1 x="903.88400000000001" y="519.95399999999995"/>
                    <BasePoint2 x="848.03599999999994" y="556.24699999999996"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_96" name="curve171" metaboliteGlyph="Layout_12" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="923.24800000000005" y="504.142"/>
                    <End x="1119.25" y="513.44399999999996"/>
                    <BasePoint1 x="903.88400000000001" y="519.95399999999995"/>
                    <BasePoint2 x="1099.28" y="512.49599999999998"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_97" name="rGlyph_18" reaction="Reaction_18">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1305.25" y="544.14200000000005"/>
                <End x="1305.25" y="544.14200000000005"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_98" name="curve180" metaboliteGlyph="Layout_12" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1206.55" y="526.82000000000005"/>
                    <End x="1305.25" y="544.14200000000005"/>
                    <BasePoint1 x="1226.25" y="530.27700000000004"/>
                    <BasePoint2 x="1311.52" y="568.34199999999998"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_99" name="curve181" metaboliteGlyph="Layout_13" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1445.21" y="667.197"/>
                    <End x="1305.25" y="544.14200000000005"/>
                    <BasePoint1 x="1430.1900000000001" y="653.99099999999999"/>
                    <BasePoint2 x="1311.52" y="568.34199999999998"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_100" name="curve180" metaboliteGlyph="Layout_23" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1305.25" y="544.14200000000005"/>
                    <End x="1356.7" y="433.45999999999998"/>
                    <BasePoint1 x="1298.97" y="519.94200000000001"/>
                    <BasePoint2 x="1348.27" y="451.596"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_101" name="rGlyph_19" reaction="Reaction_19">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1365.25" y="622.14200000000005"/>
                <End x="1365.25" y="622.14200000000005"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_102" name="curve190" metaboliteGlyph="Layout_23" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1369.05" y="435.13999999999999"/>
                    <End x="1365.25" y="622.14200000000005"/>
                    <BasePoint1 x="1368.6400000000001" y="455.13600000000002"/>
                    <BasePoint2 x="1365.8499999999999" y="597.149"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_103" name="curve190" metaboliteGlyph="Layout_11" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1365.25" y="622.14200000000005"/>
                    <End x="1243.1300000000001" y="665.63699999999994"/>
                    <BasePoint1 x="1364.6500000000001" y="647.13499999999999"/>
                    <BasePoint2 x="1261.97" y="658.92600000000004"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_104" name="curve191" metaboliteGlyph="Layout_13" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1365.25" y="622.14200000000005"/>
                    <End x="1427.8299999999999" y="669.76999999999998"/>
                    <BasePoint1 x="1364.6500000000001" y="647.13499999999999"/>
                    <BasePoint2 x="1411.9200000000001" y="657.65800000000002"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_105" name="tGlyph_0" graphicalObject="Layout_3" originOfText="Metabolite_0">
          <BoundingBox>
            <Position x="473.524" y="187.12799999999999"/>
            <Dimensions width="41" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_106" name="tGlyph_1" graphicalObject="Layout_4" originOfText="Metabolite_1">
          <BoundingBox>
            <Position x="555.84000000000003" y="185.60400000000001"/>
            <Dimensions width="41" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_107" name="tGlyph_2" graphicalObject="Layout_5" text="MAPKKK">
          <BoundingBox>
            <Position x="508.91000000000003" y="50"/>
            <Dimensions width="73" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_108" name="tGlyph_3" graphicalObject="Layout_6" text="P-MAPKKK">
          <BoundingBox>
            <Position x="465.28300000000002" y="370.03100000000001"/>
            <Dimensions width="89" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_109" name="tGlyph_4" graphicalObject="Layout_7" text="MAPKK">
          <BoundingBox>
            <Position x="114.538" y="515.23099999999999"/>
            <Dimensions width="65" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_110" name="tGlyph_5" graphicalObject="Layout_8" text="P-MAPKK">
          <BoundingBox>
            <Position x="459.904" y="601.12"/>
            <Dimensions width="81" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_111" name="tGlyph_6" graphicalObject="Layout_9" text="PP-MAPKK">
          <BoundingBox>
            <Position x="759.60400000000004" y="573.26900000000001"/>
            <Dimensions width="89" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_112" name="tGlyph_7" graphicalObject="Layout_10" text="MAPK">
          <BoundingBox>
            <Position x="1104.97" y="782.60000000000002"/>
            <Dimensions width="57" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_113" name="tGlyph_8" graphicalObject="Layout_11" text="P-MAPK">
          <BoundingBox>
            <Position x="1161.02" y="661.00800000000004"/>
            <Dimensions width="73" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_114" name="tGlyph_9" graphicalObject="Layout_12" text="PP-MAPK">
          <BoundingBox>
            <Position x="1129.5999999999999" y="497.67899999999997"/>
            <Dimensions width="81" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_115" name="tGlyph_10" graphicalObject="Layout_13" text="MAPK-Pase">
          <BoundingBox>
            <Position x="1420.8199999999999" y="673.55600000000004"/>
            <Dimensions width="97" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_116" name="tGlyph_11" graphicalObject="Layout_14" text="MAPKK-Pase">
          <BoundingBox>
            <Position x="439.67899999999997" y="864.60400000000004"/>
            <Dimensions width="105" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_117" name="tGlyph_12" graphicalObject="Layout_15" text="MAPKKK_E1">
          <BoundingBox>
            <Position x="267.66699999999997" y="190.41900000000001"/>
            <Dimensions width="97" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_118" name="tGlyph_13" graphicalObject="Layout_16" text="P-MAPKKK_E2">
          <BoundingBox>
            <Position x="697.745" y="180.91999999999999"/>
            <Dimensions width="113" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_119" name="tGlyph_14" graphicalObject="Layout_17" text="P-MAPKKK_MAPKK">
          <BoundingBox>
            <Position x="267.74000000000001" y="568.43799999999999"/>
            <Dimensions width="137" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_120" name="tGlyph_15" graphicalObject="Layout_18" text="P-MAPKKK_P-MAPKK">
          <BoundingBox>
            <Position x="565.78800000000001" y="535.44600000000003"/>
            <Dimensions width="153" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_121" name="tGlyph_16" graphicalObject="Layout_19" text="PP-MAPKK_MAPK">
          <BoundingBox>
            <Position x="826.20000000000005" y="764.86099999999999"/>
            <Dimensions width="129" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_122" name="tGlyph_17" graphicalObject="Layout_20" text="PP-MAPKK_P-MAPK">
          <BoundingBox>
            <Position x="960.35599999999999" y="402.01900000000001"/>
            <Dimensions width="145" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_123" name="tGlyph_18" graphicalObject="Layout_21" text="MAPKK-Pase_PP-MAPKK">
          <BoundingBox>
            <Position x="591.58100000000002" y="783.39400000000001"/>
            <Dimensions width="177" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_124" name="tGlyph_19" graphicalObject="Layout_22" text="MAPKK-Pase_P-MAPKK">
          <BoundingBox>
            <Position x="50" y="735.14499999999998"/>
            <Dimensions width="169" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_125" name="tGlyph_20" graphicalObject="Layout_23" text="MAPK-Pase_PP-MAPK">
          <BoundingBox>
            <Position x="1290.3599999999999" y="399.98599999999999"/>
            <Dimensions width="161" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_126" name="tGlyph_21" graphicalObject="Layout_24" text="MAPK-Pase_P-MAPK">
          <BoundingBox>
            <Position x="1248.8900000000001" y="891.60400000000004"/>
            <Dimensions width="153" height="25"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
    </Layout>
  </ListOfLayouts>
  <SBMLReference file="MAPK-HF96-layout.xml">
    <SBMLMap SBMLid="E1" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="E1_KKK" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="E2" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="E2_P_KKK" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="K" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="KK" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="KKK" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="KKPase" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="KKPase_PP_KK" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="KKPase_P_KK" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="KPase" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="KPase_PP_K" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="KPase_P_K" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="PP_K" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="PP_KK" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="PP_KK_K" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="PP_KK_P_K" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="P_K" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="P_KK" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="P_KKK" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="P_KKK_KK" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="P_KKK_P_KK" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="parameter_1" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="r10a" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="r10b" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="r1a" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="r1b" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="r2a" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="r2b" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="r3a" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="r3b" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="r4a" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="r4b" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="r5a" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="r5b" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="r6a" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="r6b" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="r7a" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="r7b" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="r8a" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="r8b" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="r9a" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="r9b" COPASIkey="Reaction_17"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-03T01:34:02Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-03T01:34:02Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-03T01:34:02Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-03T01:34:02Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-03T01:34:02Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-03T01:34:02Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
