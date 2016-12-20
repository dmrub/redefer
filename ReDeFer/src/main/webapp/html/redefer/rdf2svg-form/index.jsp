<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="req" value="${pageContext.request}" />
<c:set var="url">${req.requestURL}</c:set>
<c:set var="uri" value="${req.requestURI}" />
<c:set var="baseuri" value="${fn:substring(url, 0, fn:length(url) - fn:length(uri))}${req.contextPath}"/>

<!DOCTYPE html>
<html>
    <head>
        <title>Rhizomik</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    </head>
    <body>
        <div>This is Rhizomik-based service (<a href="http://rhizomik.net/html">http://rhizomik.net/html</a>).</div>

        <h1>RDF to SVG Form</h1>

        <form method="post" action="${baseuri}/redefer-services/render" name="render" target="_blank" accept-charset="UTF-8">
            <p>Input RDF or URI pointing to RDF content:</p>
            <p><textarea cols="80" rows="10" name="rdf" id="rdf">&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
 &lt;rdf:RDF xmlns:swrc=&quot;http://swrc.ontoware.org/ontology#&quot;
  	xmlns:rdf=&quot;http://www.w3.org/1999/02/22-rdf-syntax-ns#&quot;
  	xmlns:rdfs=&quot;http://www.w3.org/2000/01/rdf-schema#&quot;
  	xmlns:vcard=&quot;http://www.w3.org/2001/vcard-rdf/3.0#&quot; &gt;
   &lt;swrc:AssociateProfessor rdf:about=&quot;http://rhizomik.net/~roberto&quot;&gt;
     &lt;swrc:homepage&gt;http://rhizomik.net/html/roberto&lt;/swrc:homepage&gt;
     &lt;vcard:EMAIL&gt;
       &lt;vcard:internet&gt;
         &lt;rdf:value&gt;roberto@rhizomik.net&lt;/rdf:value&gt;
       &lt;/vcard:internet&gt;
     &lt;/vcard:EMAIL&gt;
     &lt;swrc:affiliation rdf:resource=&quot;http://www.udl.cat&quot;/&gt;
     &lt;vcard:ADR&gt;
       &lt;vcard:work&gt;
         &lt;vcard:Street&gt;Jaume II, 69&lt;/vcard:Street&gt;
         &lt;vcard:Locality&gt;Lleida&lt;/vcard:Locality&gt;
         &lt;vcard:Country&gt;ES&lt;/vcard:Country&gt;
         &lt;vcard:Pcode&gt;E-25001&lt;/vcard:Pcode&gt;
       &lt;/vcard:work&gt;
     &lt;/vcard:ADR&gt;
     &lt;rdfs:label&gt;Roberto Garc&iacute;a Gonz&aacute;lez&lt;/rdfs:label&gt;
     &lt;vcard:N rdf:parseType=&quot;Resource&quot;&gt;
       &lt;vcard:Family&gt;Garc&iacute;a Gonz&aacute;lez&lt;/vcard:Family&gt;
       &lt;vcard:Given&gt;Roberto&lt;/vcard:Given&gt;
     &lt;/vcard:N&gt;
     &lt;vcard:TEL&gt;
       &lt;vcard:voice&gt;
         &lt;rdf:type rdf:resource=&quot;http://www.w3.org/2001/vcard-rdf/3.0#work&quot;/&gt;
         &lt;rdf:value&gt;+34-973-702-742&lt;/rdf:value&gt;
       &lt;/vcard:voice&gt;
     &lt;/vcard:TEL&gt;
     &lt;vcard:FN&gt;Roberto Garc&iacute;a Gonz&aacute;lez&lt;/vcard:FN&gt;
   &lt;/swrc:AssociateProfessor&gt;
   &lt;rdf:Description rdf:about=&quot;http://swrc.ontoware.org/ontology#AssociateProfessor&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;en&quot;&gt;Associate Professor&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://www.diei.udl.es&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;en&quot;&gt;Computer Science and Engineering Department&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://www.w3.org/2001/vcard-rdf/3.0#Family&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;en&quot;&gt;Family Name&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://www.w3.org/2001/vcard-rdf/3.0#Street&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;en&quot;&gt;Street&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://www.w3.org/2001/vcard-rdf/3.0#Pcode&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;en&quot;&gt;Postal Code&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://www.w3.org/2001/vcard-rdf/3.0#FN&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;en&quot;&gt;Full Name&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://www.w3.org/2001/vcard-rdf/3.0#N&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;en&quot;&gt;Name&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://www.w3.org/2001/vcard-rdf/3.0#Given&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;en&quot;&gt;Given Name&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://www.w3.org/2001/vcard-rdf/3.0#Country&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;en&quot;&gt;Country&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://www.w3.org/2001/vcard-rdf/3.0#ADR&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;en&quot;&gt;Address&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://swrc.ontoware.org/ontology#AssociateProfessor&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;es&quot;&gt;Profesor Contratado Doctor&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://www.diei.udl.es&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;es&quot;&gt;Departamento de Inform&aacute;tica e Ingenier&iacute;a Industrial&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://www.w3.org/2001/vcard-rdf/3.0#Family&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;es&quot;&gt;Apellido&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://www.w3.org/2001/vcard-rdf/3.0#Street&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;es&quot;&gt;Calle&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://www.w3.org/2001/vcard-rdf/3.0#Pcode&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;es&quot;&gt;C&oacute;digo Postal&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://www.w3.org/2001/vcard-rdf/3.0#FN&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;es&quot;&gt;Nombre Completo&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://www.w3.org/2001/vcard-rdf/3.0#N&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;es&quot;&gt;Nombre&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://www.w3.org/2001/vcard-rdf/3.0#Given&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;es&quot;&gt;Nombre&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://www.w3.org/2001/vcard-rdf/3.0#Country&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;es&quot;&gt;Pa&iacute;s&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
   &lt;rdf:Description rdf:about=&quot;http://www.w3.org/2001/vcard-rdf/3.0#ADR&quot;&gt;
     &lt;rdfs:label xml:lang=&quot;es&quot;&gt;Direcci&oacute;n&lt;/rdfs:label&gt;
   &lt;/rdf:Description&gt;
 &lt;/rdf:RDF&gt;  </textarea></p>
            <p>What to do:</p>
            <p><select name="rules">
                    <option selected="selected" value="http://rhizomik.net/html/redefer/rdf2svg/showgraph.jrule">Show graph</option>
                    <option value="http://rhizomik.net/html/redefer/rdf2svg/showclasshierarchy.jrule">Show class hierarchy</option>
                    <option value="http://rhizomik.net/html/redefer/rdf2svg/showontology.jrule">Show ontology</option>
                </select></p>
            <p>Input format:</p>
            <p><select name="format" id="format">
                    <option selected="selected" value="RDF/XML">RDF/XML</option>
                    <option value="N-TRIPLE">N-Triples</option>
                    <option value="N3">N3</option>
                </select></p>
            <p>Language (en, es, de, fr,...):</p>
            <p><input type="text" name="language" id="language" value="es"/> (Filters preferred language if defined in input RDF using xml:lang, shows all if none defined)</p>
            <input type="submit" name="Submit" value="Submit" />
        </form>
        <h1>RDF to SVG API</h1>

        <p>The base address of the service is: <b>${baseuri}/redefer-services/render</b></p>
        <p>It can called using <b>GET</b> or <b>POST</b>. The former is recommended when the RDF to be transformed is available from a URI, the latter when direct input is provided.</p>
        <p>The parameters of the service are:</p>
        <ul>
            <li><b>rdf=URI|RDF/XML</b>: the RDF/XML to be processed or a URI (content negotiated) where it can be retrieved from.</li>
            <li><b>format=RDF/XML|N-TRIPLE|N3</b>: the language the input RDF is serialised in.</li>
            <li><b>mode=svg|snippet</b>: defines if the output is a full SVG file or just a snippet for inclusion in other web pages (default "svg").</li>
            <li><b>rules=URI</b>: it specifies the set of Jena rules to be used in order to determine what is going to be rendered. Available examples:
                <ul>
                    <li><b>${baseuri}/html/redefer/rdf2svg/showgraph.jrule</b>: draws the whole graph in a condensed way (boxes for resources and their types, CURIEs,...)</li>
                    <li><b>${baseuri}/html/redefer/rdf2svg/showclasshierarchy.jrule</b>: draws just the classes hierarchy.</li>
                </ul>
            </li>
        </ul>
        <p>Examples using GET:</p>
        <ul>
            <li><p>Show a RDF graph: <br/><a href="${baseuri}/redefer-services/render?rdf=http://rhizomik.net/html/ontologies/mpeg7ontos/examples/descriptionExample002.rdf&format=RDF/XML&mode=svg&rules=${baseuri}/html/redefer/rdf2svg/showgraph.jrule" target="_blank"><b>${baseuri}/redefer-services/render?rdf=</b>http://rhizomik.net/html/ontologies/mpeg7ontos/examples/descriptionExample002.rdf?<b>rdf</b>=&<b>formait</b>=RDF/XML&<b>mode</b>=svg&<b>rules</b>=${baseuri}/html/redefer/rdf2svg/showgraph.jrule</a></p></li>
            <li><p>Show the class hierarcy in an ontology: <br/><a href="${baseuri}/redefer-services/render?rdf=https://raw.github.com/structureddynamics/Bibliographic-Ontology-BIBO/1.3/bibo.xml.owl&format=RDF/XML&mode=svg&rules=${baseuri}/html/redefer/rdf2svg/showclasshierarchy.jrule" target="_blank"><b>${baseuri}/redefer-services/render</b>?<b>rdf</b>=http://purl.org/ontology/bibo/&<b>format</b>=RDF/XML&<b>mode</b>=svg&<b>rules</b>=${baseuri}/html/redefer/rdf2svg/showclasshierarchy.jrule</a></p></li>
            <li><p>Show ontology: <br/><a href="${baseuri}/redefer-services/render?rdf=http://rhizomik.net/ontologies/2008/05/emotionsonto.owl&format=RDF/XML&mode=svg&rules=${baseuri}/html/redefer/rdf2svg/showontology.jrule" target="_blank"><b>${baseuri}/redefer-services/render</b>?<b>rdf</b>=http://rhizomik.net/ontologies/2008/05/emotionsonto.owl&<b>format</b>=RDF/XML&<b>mode</b>=svg&<b>rules</b>=${baseuri}/html/redefer/rdf2svg/showontology.jrule</a></p></li>
        </ul>
    </body>
</html>
