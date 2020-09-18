<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<xsl:template match="/">
  <html>
  <style>
  h1{
  font-size: 3em;
  }
  img{
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 20em;
  }
</style>
    <body>
       <h1> ABC Financial Startup </h1>
        <img src="financialstartup.jpg"/>
            <p>We are a very young financial manager company and we are proud of our clients</p>
            <p>We have started with 1 client a little bit more thatn 10 years ago and now we have <xsl:value-of select="count(//Client)"/> clients!</p>
            <p>These are our clients: <xsl:for-each select="Accounts/Client/Name">
                <xsl:value-of select="Last"/><xsl:text>, </xsl:text><xsl:value-of select="First"/>
                  <xsl:choose>
                     <xsl:when test="position()=last()"></xsl:when>
                     <xsl:otherwise> and </xsl:otherwise>
                 </xsl:choose>
                 </xsl:for-each>.</p>
            <p><xsl:value-of select="count(//Client/Years[.&gt;7])"/> of our clients are with us for more than 7 years!</p>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
