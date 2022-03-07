<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Student Details</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>name</th>
      <th>ID</th>
      <th>course</th>
      <th>CGPA</th>
    </tr>
    <xsl:for-each select="student_details/student">
    <xsl:sort select="CGPA"/>
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="ID"/></td>
      <td><xsl:value-of select="course"/></td>
      <td><xsl:value-of select="CGPA"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
