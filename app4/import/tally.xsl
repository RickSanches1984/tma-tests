<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template name="tally">
    <xsl:number level="any" count="book[@lang = 'b'][string($inner)]"/>
  </xsl:template>
</xsl:stylesheet>
