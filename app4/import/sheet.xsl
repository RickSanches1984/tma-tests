<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:import href="warm.xsl"/>
  <xsl:import href="tally.xsl"/>
  <xsl:output method="html"/>
  <xsl:variable name="outer">
    <xsl:apply-templates select="/shelf/book" mode="warm"/>
    <xsl:for-each select="document('second.xml')/shelf/book"><xsl:call-template name="tally"/></xsl:for-each>
  </xsl:variable>
  <xsl:variable name="inner">
    <xsl:for-each select="document('third.xml')/shelf/book"><xsl:call-template name="tally"/></xsl:for-each>
    <xsl:text>.</xsl:text>
  </xsl:variable>
  <xsl:template match="/">
    <html><body><p id="result">transform finished:<xsl:value-of select="$outer"/></p></body></html>
  </xsl:template>
</xsl:stylesheet>
