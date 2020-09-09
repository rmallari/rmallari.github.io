<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<xsl:template match="/">
  <html>
    <body>
       <h1> List of Clients </h1>
      <table style="border: 3px solid blue;">
        <tr>
          <th>Name</th>
          <th>Phone</th>
          <th>Email</th>
          <th>Account Total</th>
        </tr>
<xsl:for-each select="Accounts/Client">
  <tr>
    <td style="border: 2 solid blue;">
      <xsl:value-of select="Name"/>
    </td>
    <td style="border: 2 solid blue;">
      <xsl:value-of select="Phone"/>
    </td>
    <td style="border: 2 solid blue;">
      <xsl:value-of select="E-mail"/>
    </td>
    <xsl:choose>
    <xsl:when test="Account_Total > 80000">
    <td style="border: 2 solid blue;text-align: right;" >
    $<xsl:value-of select="Account_Total"/>
    </td>
    </xsl:when>
    <xsl:otherwise>
    <td style="border: 2 solid blue; text-align: right; color: red;">
    $<xsl:value-of select="Account_Total"/>
    </td>
    </xsl:otherwise>
    </xsl:choose>
</tr>
</xsl:for-each>   
</table>
</body>
</html>
</xsl:template>

</xsl:stylesheet>