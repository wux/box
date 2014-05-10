/* script.js */

/* FUNCTIONS */

// HTTP Request
function loadXML (file) {
	if (window.XMLHttpRequest) {
		// code for Chrome, Firefox, Opera, etc.
		xhttp = new XMLHttpRequest();
	} else {
		// code for IE
		xhttp = new ActiveXObject("Microsoft.XMLHTTP"); // Different ActiveXObject for IE
	};
	xhttp.open("GET", file, false);
	try {xhttp.responseType = "msxml-document";} catch (e) {}; // Set responseType for IE 9+
	xhttp.send(null);
	return xhttp.responseXML;
};

// Process & Output
function processXML (location, xml, xsl) {
	if (window.ActiveXObject || xhttp.responseType == "msxml-document" || "ActiveXObject" in window) { // Added criteria for IE detection
		// code for IE
		ex = xml.transformNode(xsl);
		document.getElementById(location).innerHTML = ex;
	} else if (document.implementation && document.implementation.createDocument) {
		// code for Chrome, Firefox, Opera, etc.
		xsltProcessor = new XSLTProcessor();
		xsltProcessor.importStylesheet(xsl);
		resultDocument = xsltProcessor.transformToFragment(xml, document);
		document.getElementById(location).innerHTML = '';
		document.getElementById(location).appendChild(resultDocument);
	};
};

// HTTP Request, Process & Output
function outputXML(location, xmlFile, xslFile) {
	xml = loadXML(xmlFile);
	xsl = loadXML(xslFile);
	processXML(location, xml, xsl);
};

// Parse XML to String
function XMLToString(xml) {
	if (window.ActiveXObject) {
		// code for IE
		var txt = xml.xml;
		return txt;
	} else {
		// code for Chrome, Firefox, Opera, etc.
		var txt = new XMLSerializer();
		txt = txt.serializeToString(xml);
		return txt;
	};
};

// Parse String to XML
function StringToXML(txt) {
	if (window.DOMParser) {
		// code for Chrome, Firefox, Opera, etc.
		parser=new DOMParser();
		xml=parser.parseFromString(txt,"text/xml");
	} else {
		// code for IE
		xml=new ActiveXObject("Microsoft.XMLDOM");
		xml.async=false;
		xml.loadXML(txt); 
	};
	return xml;
};