<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:variable name="outer">
    <xsl:apply-templates select="/shelf/book" mode="tally"/>
    <xsl:apply-templates select="document('second.xml')/shelf/book" mode="tally"/>
  </xsl:variable>
  <xsl:variable name="inner">
    <xsl:apply-templates select="document('third.xml')/shelf/book" mode="tally"/>
    <xsl:text>.</xsl:text>
  </xsl:variable>
  <xsl:template match="book" mode="tally">
    <xsl:number level="any" count="nothing | book[@lang = 'b'][string($inner)]"/>
  </xsl:template>
  <xsl:template match="/">
    <html><body><p id="result">transform finished:<xsl:value-of select="$outer"/></p></body></html>
  </xsl:template>
</xsl:stylesheet>
