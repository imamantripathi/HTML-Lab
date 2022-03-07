<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Stationary Products</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>pname</th>
      <th>cost</th>
      <th>discount</th>
    </tr>
    <xsl:for-each select="cart/product">
    <xsl:if test="cost &gt; 100">
    <tr>
      <td><xsl:value-of select="pname"/></td>
      <td><xsl:value-of select="cost"/></td>
      <td><xsl:value-of select="discount"/></td>
    </tr>
    </xsl:if>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
