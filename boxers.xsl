<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:boxing="http://www.boxing.com/data" xmlns:b="http://www.boxing.com/boxer" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<xsl:copy>
			<xsl:apply-templates select="boxing:data"/>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="boxing:data">
	  <div class="item-list">
	    <ul>

		<xsl:copy>
			<xsl:apply-templates select="b:boxer"/>
		</xsl:copy>
	  </ul>
	</div>

	</xsl:template>
		
	    <xsl:template match="b:boxer">
	      <li class="item-row">
		<span class="views-field-field-images-fid">
		  <img style="width:280px;">
		    <xsl:attribute name="src">
		      ./images/<xsl:value-of select="b:image" />
		    </xsl:attribute>
		  </img>
		</span>

		<div class="views-field-title">
                  <span class="field-content">
  
		  [<xsl:value-of select="b:name" />]<br/>
		  <i>Nickname:<xsl:value-of select="b:nickname" /></i><br/>
		  <b>Gender:<xsl:value-of select="b:gender" /></b><br/>
		  <b>Age:<xsl:value-of select="b:age" /></b><br/>
		  <b>Rated:<xsl:value-of select="b:rated" /></b><br/>
		  <b>Height:<xsl:value-of select="b:height" /></b><br/>
		  <b>Date of Birth:<xsl:value-of select="b:born" /></b><br/>
		  <b>Country:<xsl:value-of select="b:country" /></b><br/>
		  <b>Stance:<xsl:value-of select="b:stance" /></b><br/>
		  <b>Total Fight:<xsl:value-of select="b:total_fight" /></b><br/>
		  <b>Total Wins:<xsl:value-of select="b:wins" /></b><br/>
		  <b>Total KOs:<xsl:value-of select="b:ko" /></b><br/>
		  <b>Total Losses:<xsl:value-of select="b:losses" /></b><br/>
		  <b>Total Draws:<xsl:value-of select="b:draws" /></b><br/>
		  </span>
		</div>

		<br>
		</br>

		<div class="views-field-field-teaser-value">
		  <p><b>Boxer Biography</b></p>
		  <p><xsl:value-of select="b:profile" /></p>
		</div>

		<div class="views-field-nothing">
                  <span class="field-content"><br class="clear" /></span>
		</div>

	      </li>
	    </xsl:template>

</xsl:stylesheet>
