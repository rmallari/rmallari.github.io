<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<xsl:template match="/">
  <html>
  <style>
  h1{
  font-size: 3em;
  }
  table{
  border: 3px solid blue;
  }
  td{
  border: 2px solid blue;
  margin: 2em 1em;
  padding: 0px 5px;
  }
  td.account{
  text-align: right;
  }
  td.account2{
  text-align: right;
  color: red;
  }
</style>
    <body>
       <h1> List of Clients </h1>
      <table>
        <tr>
          <th>Name</th>
          <th>Phone</th>
          <th>Email</th>
          <th>Account Total</th>
        </tr>
<xsl:for-each select="Accounts/Client">
  <xsl:sort select="Name/Last"/>
  <tr>
    <td>
      <xsl:value-of select="Name"/>
    </td>
    <td >
      <xsl:value-of select="Phone"/>
    </td>
    <td>
      <xsl:value-of select="E-mail"/>
    </td>
    <xsl:choose>
    <xsl:when test="Account_Total > 80000">
    <td class="account" >
    $ <xsl:value-of select="Account_Total"/>
    </td>
    </xsl:when>
    <xsl:otherwise>
    <td class="account2">
    $ <xsl:value-of select="Account_Total"/>
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
