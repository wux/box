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
			<xsl:apply-templates select="p:champions//titles:champion_profile"/>
		</xsl:copy>
	</xsl:template>  
	
	<xsl:template match="boxing:data">
		<table width="400" border="1">
      		<tr bgcolor ="23ADBA">
      			<td>WBA</td>
      			<td>WBC</td>
      			<td>IBF</td>
      			<td>WBO</td>
      			<td>The Ring</td>
      		</tr>
    <xsl:for-each select="p:champions>
    
     <img style="float: right; weight:280px; height:280px;">
		<xsl:attribute name="src">
			./images/<xsl:value-of select="title:image" />
		</xsl:attribute>
	</img>
    		<tr>
            <td><xsl:value-of select="title:name" /></td>
            <td><xsl:value-of select="title:country" /></td>
            <td><xsl:value-of select="title:record" /></td>
            <td><xsl:value-of select="title:date" /></td>
            </tr>
        </xsl:if>
    </xsl:for-each>
     	</table>
      
    </xsl:template> 
 </xsl:stylesheet>