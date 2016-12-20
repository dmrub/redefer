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

        <h1>RDF to HTML+RDFa Form</h1>
        <form accept-charset="UTF-8" name="renderdf" action="${baseuri}/redefer-services/rdf2html" method="post" target="_blank">
            <p>Input RDF/XML or URI pointing to RDF/XML content (e.g. http://dbpedia.org/resource/Semantic_Web):</p>
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
            <p>Mode:</p>
            <p><select id="mode" name="mode">
                    <option value="html" selected="selected">HTML page (with header, body and CSS applied)</option>
                    <option value="snippet">Snippet (no HTML header, body and no styling)</option>
                </select></p>
            <p>Show namespaces:</p>
            <p><select id="namespaces" name="namespaces">
                    <option value="false" selected="selected">Don't show, use labels for preferred language or local-names</option>
                    <option value="true">Show namespaces, using CURIEs</option>
                </select></p>
            <p>Language (en, es, de, fr,...):</p>
            <p><input type="text" value="es" id="language" name="language" /> (Filters preferred language if defined in input RDF using xml:lang)</p>
            <!-- p>Input format:</p>
            <p><select name="lang" id="lang">
                        <option selected="selected" value="RDF/XML">RDF/XML</option>
                        <option value="N-TRIPLE">N-Triples</option>
                        <option value="N3">N3</option>
                </select></p --> 	<input type="submit" name="Submit" value="Submit" />
        </form>
        <h1>RDF to HTML+RDFa API</h1>
        <p>The base address of the service is: <b>redefer-services/rdf2html</b></p>
        <p>It can called using <b>GET</b> or <b>POST</b>. The former is recommended when the RDF to be transformed is available from a URI, the latter when direct input is provided.</p>
        <p>The parameters of the service are:</p>
        <ul>
            <li><b>rdf=URI|RDF/XML</b>: the RDF/XML to be processed or a URI (content negotiated) where it can be retrieved from.</li>
            <li><b>mode=html|snippet</b>: defines if the output is a full XHTML page or just a snippet for inclusion in other web pages (default &quot;html&quot;).</li>
            <li><b>namespaces=true|false</b>: defines if the rendered output should show information about properties and resources namespaces or not (default &quot;false&quot;).</li>
            <li><b>language=en|es|fr...</b>: filter literals and labels based on the preferred language (default &quot;en&quot;).</li>
        </ul>
        <p>Example using GET:</p>
        <p><a target="_blank" href="${baseuri}/redefer-services/rdf2html?rdf=http://dbpedia.org/resource/RDFa&amp;mode=html&amp;namespaces=true&amp;language=en"><b>${baseuri}/redefer-services/rdf2html</b>?<b>rdf</b>=http://dbpedia.org/resource/RDFa&amp;<b>mode</b>=html&amp;<b>namespaces</b>=true&amp;<b>language</b>=en</a></p>
    </body>
</html>
