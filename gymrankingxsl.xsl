<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:boxing="http://www.boxing.com/data" xmlns:b="http://www.boxing.com/boxer" xmlns:c="http://www.boxing.com/compeition" xmlns:title="http://www.boxing.com/titles" xmlns:g="http://www.boxing.com/gym" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
<!-- B019418 Yuncong Zou -->
<!-- ISC355 - Markup Languages for the Web -->

      <xsl:template match="/">
      	<xsl:copy>
			<xsl:apply-templates select="boxing:data"/>
		</xsl:copy>
	</xsl:template>
      
      <xsl:template match="boxing:data">
		<xsl:copy>
			<xsl:apply-templates select="g:gymranking"/>
		</xsl:copy>
	</xsl:template>  
	
	<xsl:template match="boxing:data">
		<table width="400" border="1">
      		<tr bgcolor ="23ADBA">
      			<td>Rank</td>
      			<td>Manager</td>
      			<td>Location(City)</td>
      			<td>Titles(Total)</td>
      			<td>Earning(Million)</td>
      		</tr>
    <xsl:for-each select="g:gymranking">
    		<tr>
            <td><xsl:value-of select="g:rank" /></td>
            <td><xsl:value-of select="g:manager" /></td>
            <td><xsl:value-of select="g:location" /></td>
            <td><xsl:value-of select="g:titles" /></td>
            <td><xsl:value-of select="g:earning" /></td>
            </tr>
    </xsl:for-each>
     	</table>
      
    </xsl:template> 
 </xsl:stylesheet>