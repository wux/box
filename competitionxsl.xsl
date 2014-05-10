<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:boxing="http://www.boxing.com/data" xmlns:b="http://www.boxing.com/boxer" xmlns:c="http://www.boxing.com/compeition" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
<!-- B019418 Yuncong Zou -->
<!-- ISC355 - Markup Languages for the Web -->
	<xsl:template match="/">
	<html>
	<head>
	</head>
	</html>
		<xsl:copy>
			<xsl:apply-templates select="boxing:data"/>
		</xsl:copy>
	</xsl:template>

		<xsl:template match="boxing:data">
		<xsl:copy>
			<xsl:apply-templates select="c:competition"/>
		</xsl:copy>
	</xsl:template>
	
	<xsl:template match="boxing:data">
      	<table class="table1">
      		<tr>
      			<td>Event</td>
      			<td>Competition Date</td>
      			<td>Start Time</td>
      			<td>Legnth(Hours)</td>
      			<td>Titile</td>
      			<td>Venue</td>
      		</tr>
    <xsl:for-each select="c:competition">
    		<xsl:sort select="c:date" order="ascending"/>
    		<tr>
            <td><xsl:value-of select="c:event" /></td>
            <td><xsl:value-of select="c:date" /></td>
            <td><xsl:value-of select="c:time" /></td>
            <td><xsl:value-of select="c:length" /></td>
            <td><xsl:value-of select="c:title" /></td>
            <td><xsl:value-of select="c:location" /></td>
            </tr>
    </xsl:for-each>
     	</table>
      
    </xsl:template> 
 </xsl:stylesheet>

