<?xml version='1.0' encoding='UTF-8'?>
<COPASI xmlns="http://www.copasi.org/static/schema" xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:html="http://www.w3.org/1999/xhtml" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" versionMajor="4" versionMinor="27" versionDevel="217" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF>
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <html:body>
<html:b>Mass action rate law for irreversible reactions</html:b>
<html:p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</html:p>
</html:body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant" />
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate" />
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#Function_14">
    <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <html:body>
<html:b>Mass action rate law for reversible reactions</html:b>
<html:p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</html:p>
</html:body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i&gt;-k2*PRODUCT&lt;product_j&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant" />
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate" />
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant" />
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product" />
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="New Model" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T15:08:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
<rdf:Description rdf:about="#Compartment_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-09-24T15:23:19Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="sGC_28" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T17:22:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=New Model,Vector=Values[\[sGC\]],Reference=InitialValue&gt;*0.28
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="sGC_72" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T17:22:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=New Model,Vector=Values[\[sGC\]],Reference=InitialValue&gt;*0.72
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="5c-sGC-N-NO_28" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T17:22:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="5c-sGC-N-NO_72" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T17:22:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="6c-sGC-NO_28" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T17:23:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="6c-sGC-NO_72" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
<rdf:Description rdf:about="#Metabolite_5">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-09-24T17:23:07Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="5c-sGC-NO_28" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
<rdf:Description rdf:about="#Metabolite_6">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-09-24T17:23:27Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="6c-sGC-NONO_72" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T17:23:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="5c-sGC-NONO_72" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T17:23:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="NO" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T17:25:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=New Model,Vector=Values[\[NO\]],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="k1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T15:12:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ml/(mmol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T15:12:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="k2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T15:12:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T15:12:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T15:12:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T15:12:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ml/(mmol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="k_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T15:12:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="k5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T15:12:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="k_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T15:12:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="[sGC]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T15:15:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/ml
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="[NO]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T15:15:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/ml
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="ep_sGC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T15:41:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ml/(mmol*cm)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="ep_5c" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T15:41:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ml/(mmol*cm)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="ep_6c" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T15:41:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ml/(mmol*cm)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="l" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T15:42:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          cm
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="absorbance" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-25T15:33:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=New Model,Vector=Values[ep_sGC],Reference=Value&gt;*(&lt;CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[sGC_28],Reference=Concentration&gt;+&lt;CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[sGC_72],Reference=Concentration&gt;)+&lt;CN=Root,Model=New Model,Vector=Values[ep_6c],Reference=Value&gt;*(&lt;CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[6c-sGC-NO_28],Reference=Concentration&gt;+&lt;CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[6c-sGC-NO_72],Reference=Concentration&gt;+&lt;CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[6c-sGC-NONO_72],Reference=Concentration&gt;)+&lt;CN=Root,Model=New Model,Vector=Values[ep_5c],Reference=Value&gt;*(&lt;CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[5c-sGC-N-NO_28],Reference=Concentration&gt;+&lt;CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[5c-sGC-N-NO_72],Reference=Concentration&gt;+&lt;CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[5c-sGC-NO_28],Reference=Concentration&gt;+&lt;CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[5c-sGC-NONO_72],Reference=Concentration&gt;))*&lt;CN=Root,Model=New Model,Vector=Values[l],Reference=Value&gt;
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="R1_28" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T17:26:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1" />
          <Substrate metabolite="Metabolite_9" stoichiometry="1" />
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1" />
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5372" name="k2" value="800" />
          <Constant key="Parameter_5371" name="k1" value="7e+08" />
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_0" />
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_0" />
              <SourceParameter reference="Metabolite_9" />
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_1" />
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_2" />
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="R1_72" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T17:27:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1" />
          <Substrate metabolite="Metabolite_9" stoichiometry="1" />
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1" />
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5370" name="k1" value="7e+08" />
          <Constant key="Parameter_5369" name="k2" value="800" />
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_0" />
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_1" />
              <SourceParameter reference="Metabolite_9" />
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_1" />
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3" />
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="R2_28" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T17:27:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1" />
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1" />
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5368" name="k1" value="850" />
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_2" />
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2" />
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="R2_72" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-24T17:27:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1" />
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1" />
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5367" name="k1" value="850" />
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_2" />
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3" />
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="R3_72" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-25T15:23:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1" />
          <Substrate metabolite="Metabolite_9" stoichiometry="1" />
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1" />
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5366" name="k1" value="5e+06" />
          <Constant key="Parameter_5365" name="k2" value="25" />
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_5" />
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_5" />
              <SourceParameter reference="Metabolite_9" />
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_6" />
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_7" />
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="R4_72" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-25T15:25:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1" />
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1" />
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5364" name="k1" value="1.6" />
          <Constant key="Parameter_5363" name="k2" value="0.02" />
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_7" />
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_7" />
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_8" />
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_8" />
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="R3_28" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF>
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-25T15:29:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1" />
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1" />
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5362" name="k1" value="20" />
          <Constant key="Parameter_5361" name="k2" value="0.2" />
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_3" />
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_4" />
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_4" />
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_6" />
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF>
<rdf:Description rdf:about="#ModelParameterSet_1">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-09-27T08:45:06Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model" value="0" type="Model" simulationType="time" />
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed" />
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[sGC_28]" value="26979191039360.004" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=New Model,Vector=Values[\[sGC\]],Reference=InitialValue&gt;*0.28
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[sGC_72]" value="69375062672640" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=New Model,Vector=Values[\[sGC\]],Reference=InitialValue&gt;*0.72
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[5c-sGC-N-NO_28]" value="0" type="Species" simulationType="reactions" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[5c-sGC-N-NO_72]" value="0" type="Species" simulationType="reactions" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[6c-sGC-NO_28]" value="0" type="Species" simulationType="reactions" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[6c-sGC-NO_72]" value="0" type="Species" simulationType="reactions" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[5c-sGC-NO_28]" value="0" type="Species" simulationType="reactions" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[6c-sGC-NONO_72]" value="0" type="Species" simulationType="reactions" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[5c-sGC-NONO_72]" value="0" type="Species" simulationType="reactions" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[NO]" value="301107042850000" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=New Model,Vector=Values[\[NO\]],Reference=InitialValue&gt;
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Values[k1]" value="700000000" type="ModelValue" simulationType="fixed" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Values[k_1]" value="800" type="ModelValue" simulationType="fixed" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Values[k2]" value="850" type="ModelValue" simulationType="fixed" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Values[k3]" value="20" type="ModelValue" simulationType="fixed" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Values[k_3]" value="0.20000000000000001" type="ModelValue" simulationType="fixed" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Values[k4]" value="5000000" type="ModelValue" simulationType="fixed" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Values[k_4]" value="25" type="ModelValue" simulationType="fixed" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Values[k5]" value="1.6000000000000001" type="ModelValue" simulationType="fixed" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Values[k_5]" value="0.02" type="ModelValue" simulationType="fixed" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Values[\[sGC\]]" value="1.6e-07" type="ModelValue" simulationType="fixed" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Values[\[NO\]]" value="4.9999999999999998e-07" type="ModelValue" simulationType="fixed" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Values[ep_sGC]" value="110000" type="ModelValue" simulationType="fixed" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Values[ep_5c]" value="25000" type="ModelValue" simulationType="fixed" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Values[ep_6c]" value="64000" type="ModelValue" simulationType="fixed" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Values[l]" value="1" type="ModelValue" simulationType="fixed" />
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Values[absorbance]" value="0.017600000000000001" type="ModelValue" simulationType="assignment" />
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[R1_28]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[R1_28],ParameterGroup=Parameters,Parameter=k2" value="800" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model,Vector=Values[k_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[R1_28],ParameterGroup=Parameters,Parameter=k1" value="700000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model,Vector=Values[k1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[R1_72]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[R1_72],ParameterGroup=Parameters,Parameter=k1" value="700000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model,Vector=Values[k1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[R1_72],ParameterGroup=Parameters,Parameter=k2" value="800" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model,Vector=Values[k_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[R2_28]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[R2_28],ParameterGroup=Parameters,Parameter=k1" value="850" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model,Vector=Values[k2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[R2_72]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[R2_72],ParameterGroup=Parameters,Parameter=k1" value="850" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model,Vector=Values[k2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[R3_72]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[R3_72],ParameterGroup=Parameters,Parameter=k1" value="5000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model,Vector=Values[k4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[R3_72],ParameterGroup=Parameters,Parameter=k2" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model,Vector=Values[k_4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[R4_72]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[R4_72],ParameterGroup=Parameters,Parameter=k1" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model,Vector=Values[k5],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[R4_72],ParameterGroup=Parameters,Parameter=k2" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model,Vector=Values[k_5],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[R3_28]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[R3_28],ParameterGroup=Parameters,Parameter=k1" value="20" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model,Vector=Values[k3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[R3_28],ParameterGroup=Parameters,Parameter=k2" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model,Vector=Values[k_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1" />
      <StateTemplateVariable objectReference="Metabolite_9" />
      <StateTemplateVariable objectReference="Metabolite_4" />
      <StateTemplateVariable objectReference="Metabolite_3" />
      <StateTemplateVariable objectReference="Metabolite_7" />
      <StateTemplateVariable objectReference="Metabolite_5" />
      <StateTemplateVariable objectReference="Metabolite_2" />
      <StateTemplateVariable objectReference="Metabolite_6" />
      <StateTemplateVariable objectReference="Metabolite_1" />
      <StateTemplateVariable objectReference="Metabolite_8" />
      <StateTemplateVariable objectReference="Metabolite_0" />
      <StateTemplateVariable objectReference="ModelValue_15" />
      <StateTemplateVariable objectReference="Compartment_0" />
      <StateTemplateVariable objectReference="ModelValue_0" />
      <StateTemplateVariable objectReference="ModelValue_1" />
      <StateTemplateVariable objectReference="ModelValue_2" />
      <StateTemplateVariable objectReference="ModelValue_3" />
      <StateTemplateVariable objectReference="ModelValue_4" />
      <StateTemplateVariable objectReference="ModelValue_5" />
      <StateTemplateVariable objectReference="ModelValue_6" />
      <StateTemplateVariable objectReference="ModelValue_7" />
      <StateTemplateVariable objectReference="ModelValue_8" />
      <StateTemplateVariable objectReference="ModelValue_9" />
      <StateTemplateVariable objectReference="ModelValue_10" />
      <StateTemplateVariable objectReference="ModelValue_11" />
      <StateTemplateVariable objectReference="ModelValue_12" />
      <StateTemplateVariable objectReference="ModelValue_13" />
      <StateTemplateVariable objectReference="ModelValue_14" />
    </StateTemplate>
    <InitialState type="initialState">0 301107042850000 0 0 0 0 0 0 69375062672640 0 26979191039360.004 0.017600000000000001 1 700000000 800 850 20 0.20000000000000001 5000000 25 1.6000000000000001 0.02 1.6e-07 1e-06 110000 25000 64000 1</InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_15" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1" />
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1" />
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1" />
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09" />
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001" />
        <Parameter name="Use Newton" type="bool" value="1" />
        <Parameter name="Use Integration" type="bool" value="1" />
        <Parameter name="Use Back Integration" type="bool" value="0" />
        <Parameter name="Accept Negative Concentrations" type="bool" value="0" />
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50" />
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000" />
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000" />
      </Method>
    </Task>
    <Task key="Task_16" name="Time-Course" type="timeCourse" scheduled="true" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="1" />
        <Parameter name="StepNumber" type="unsignedInteger" value="100" />
        <Parameter name="StepSize" type="float" value="1" />
        <Parameter name="Duration" type="float" value="100" />
        <Parameter name="TimeSeriesRequested" type="bool" value="1" />
        <Parameter name="OutputStartTime" type="float" value="0" />
        <Parameter name="Output Event" type="bool" value="0" />
        <Parameter name="Start in Steady State" type="bool" value="0" />
        <Parameter name="Use Values" type="bool" value="0" />
        <Parameter name="Values" type="string" value="" />
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0" />
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07" />
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13" />
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000" />
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0" />
      </Method>
    </Task>
    <Task key="Task_17" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1" />
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1" />
        <Parameter name="Adjust initial conditions" type="bool" value="0" />
        <Parameter name="Continue on Error" type="bool" value="0" />
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_18" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1" />
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_19" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1" />
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]" />
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0" />
        <Parameter name="Randomize Start Values" type="bool" value="0" />
        <Parameter name="Calculate Statistics" type="bool" value="1" />
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0" />
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000" />
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1" />
        <Parameter name="Seed" type="unsignedInteger" value="0" />
      </Method>
    </Task>
    <Task key="Task_20" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1" />
      <Problem>
        <Parameter name="Maximize" type="bool" value="0" />
        <Parameter name="Randomize Start Values" type="bool" value="0" />
        <Parameter name="Calculate Statistics" type="bool" value="1" />
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]" />
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]" />
        <Parameter name="Create Parameter Sets" type="bool" value="0" />
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1" />
          <Parameter name="Threshold" type="unsignedInteger" value="5" />
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0" />
        <Parameter name="Number of Generations" type="unsignedInteger" value="200" />
        <Parameter name="Population Size" type="unsignedInteger" value="20" />
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1" />
        <Parameter name="Seed" type="unsignedInteger" value="0" />
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0" />
      </Method>
    </Task>
    <Task key="Task_21" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1" />
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_15" />
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09" />
        <Parameter name="Use Reder" type="bool" value="1" />
        <Parameter name="Use Smallbone" type="bool" value="1" />
      </Method>
    </Task>
    <Task key="Task_22" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1" />
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3" />
        <Parameter name="DivergenceRequested" type="bool" value="1" />
        <Parameter name="TransientTime" type="float" value="0" />
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1" />
        <Parameter name="Overall time" type="unsignedFloat" value="1000" />
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07" />
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13" />
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000" />
      </Method>
    </Task>
    <Task key="Task_23" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1" />
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100" />
        <Parameter name="StepSize" type="float" value="0.01" />
        <Parameter name="Duration" type="float" value="1" />
        <Parameter name="TimeSeriesRequested" type="bool" value="1" />
        <Parameter name="OutputStartTime" type="float" value="0" />
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001" />
      </Method>
    </Task>
    <Task key="Task_24" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1" />
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1" />
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value="" />
          <Parameter name="ObjectListType" type="unsignedInteger" value="7" />
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value="" />
            <Parameter name="ObjectListType" type="unsignedInteger" value="41" />
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value="" />
            <Parameter name="ObjectListType" type="unsignedInteger" value="0" />
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001" />
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13" />
      </Method>
    </Task>
    <Task key="Task_25" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1" />
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_26" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0" />
        <Parameter name="StepNumber" type="unsignedInteger" value="100" />
        <Parameter name="StepSize" type="float" value="0.01" />
        <Parameter name="Duration" type="float" value="1" />
        <Parameter name="TimeSeriesRequested" type="bool" value="1" />
        <Parameter name="OutputStartTime" type="float" value="0" />
        <Parameter name="Output Event" type="bool" value="0" />
        <Parameter name="Start in Steady State" type="bool" value="0" />
        <Parameter name="Use Values" type="bool" value="0" />
        <Parameter name="Values" type="string" value="" />
        <Parameter name="LimitCrossings" type="bool" value="0" />
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0" />
        <Parameter name="LimitOutTime" type="bool" value="0" />
        <Parameter name="LimitOutCrossings" type="bool" value="0" />
        <Parameter name="PositiveDirection" type="bool" value="1" />
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0" />
        <Parameter name="LimitUntilConvergence" type="bool" value="0" />
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07" />
        <Parameter name="Threshold" type="float" value="0" />
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0" />
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07" />
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value="" />
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0" />
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07" />
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13" />
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000" />
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0" />
      </Method>
    </Task>
    <Task key="Task_27" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1" />
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_15" />
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_28" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0" />
        <Parameter name="StepNumber" type="unsignedInteger" value="100" />
        <Parameter name="StepSize" type="float" value="0.01" />
        <Parameter name="Duration" type="float" value="1" />
        <Parameter name="TimeSeriesRequested" type="bool" value="1" />
        <Parameter name="OutputStartTime" type="float" value="0" />
        <Parameter name="Output Event" type="bool" value="0" />
        <Parameter name="Start in Steady State" type="bool" value="0" />
        <Parameter name="Use Values" type="bool" value="0" />
        <Parameter name="Values" type="string" value="" />
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0" />
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07" />
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13" />
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000" />
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0" />
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_10" name="Steady-State" taskType="steadyState" separator="&#09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]" />
      </Footer>
    </Report>
    <Report key="Report_11" name="Elementary Flux Modes" taskType="fluxMode" separator="&#09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result" />
      </Footer>
    </Report>
    <Report key="Report_12" name="Optimization" taskType="optimization" separator="&#09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description" />
        <Object cn="String=\[Function Evaluations\]" />
        <Object cn="Separator=&#09;" />
        <Object cn="String=\[Best Value\]" />
        <Object cn="Separator=&#09;" />
        <Object cn="String=\[Best Parameters\]" />
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations" />
        <Object cn="Separator=&#09;" />
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value" />
        <Object cn="Separator=&#09;" />
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters" />
      </Body>
      <Footer>
        <Object cn="String=&#10;" />
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result" />
      </Footer>
    </Report>
    <Report key="Report_13" name="Parameter Estimation" taskType="parameterFitting" separator="&#09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description" />
        <Object cn="String=\[Function Evaluations\]" />
        <Object cn="Separator=&#09;" />
        <Object cn="String=\[Best Value\]" />
        <Object cn="Separator=&#09;" />
        <Object cn="String=\[Best Parameters\]" />
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations" />
        <Object cn="Separator=&#09;" />
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value" />
        <Object cn="Separator=&#09;" />
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters" />
      </Body>
      <Footer>
        <Object cn="String=&#10;" />
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result" />
      </Footer>
    </Report>
    <Report key="Report_14" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description" />
      </Header>
      <Footer>
        <Object cn="String=&#10;" />
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result" />
      </Footer>
    </Report>
    <Report key="Report_15" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description" />
      </Header>
      <Footer>
        <Object cn="String=&#10;" />
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result" />
      </Footer>
    </Report>
    <Report key="Report_16" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description" />
      </Header>
      <Footer>
        <Object cn="String=&#10;" />
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result" />
      </Footer>
    </Report>
    <Report key="Report_17" name="Sensitivities" taskType="sensitivities" separator="&#09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description" />
      </Header>
      <Footer>
        <Object cn="String=&#10;" />
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result" />
      </Footer>
    </Report>
    <Report key="Report_18" name="Moieties" taskType="moieties" separator="&#09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description" />
      </Header>
      <Footer>
        <Object cn="String=&#10;" />
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result" />
      </Footer>
    </Report>
    <Report key="Report_19" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description" />
      </Header>
      <Footer>
        <Object cn="String=&#10;" />
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result" />
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0" />
      <Parameter name="log Y" type="bool" value="0" />
      <ListOfPlotItems>
        <PlotItem name="Values[absorbance]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0" />
          <Parameter name="Line subtype" type="unsignedInteger" value="0" />
          <Parameter name="Line width" type="unsignedFloat" value="1" />
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0" />
          <Parameter name="Color" type="string" value="auto" />
          <Parameter name="Recording Activity" type="string" value="during" />
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time" />
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Values[absorbance],Reference=Value" />
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF>
<rdf:Description rdf:about="#Unit_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-09-27T08:45:04Z</dcterms:W3CDTF>
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
<rdf:RDF>
<rdf:Description rdf:about="#Unit_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-09-27T08:45:04Z</dcterms:W3CDTF>
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
<rdf:RDF>
<rdf:Description rdf:about="#Unit_12">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-09-27T08:45:04Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_15" name="dimensionless" symbol="1">
      <MiriamAnnotation>
<rdf:RDF>
<rdf:Description rdf:about="#Unit_14">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-09-27T08:45:04Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF>
<rdf:Description rdf:about="#Unit_16">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-09-27T08:45:04Z</dcterms:W3CDTF>
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
<rdf:RDF>
<rdf:Description rdf:about="#Unit_34">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-09-27T08:45:04Z</dcterms:W3CDTF>
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
<rdf:RDF>
<rdf:Description rdf:about="#Unit_40">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-09-27T08:45:04Z</dcterms:W3CDTF>
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