<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
   <title>Nutrition Facts</title>
  </html>
  <body>
   <!-- Create table -->
   <table border="1" style="border-collapse:collapse" align="center">
   
    <!-- Heading -->
    <tr bgclor="#9acd32">
     <th colspan="2">Grandma White&apos;s Cookies</th>     
    </tr>
    
    <!-- Get the data from the xml file using
    for-each loop and display in the html file.
    -->
    <xsl:for-each select="product">
    <tr>
     <td>Serving Size</td>
     <td><xsl:value-of select="servingsize"/></td>
    </tr>
    
    <tr>
     <td>Cholesterol</td>
     <td><xsl:value-of select="cholesterol"/></td>
    </tr>
    
    <tr>
     <td>Sodium</td>
     <td><xsl:value-of select="sodium"/></td>
    </tr>
    
    <tr>
     <td>Protein</td>
     <td><xsl:value-of select="protein"/></td>
    </tr>
    
    <!-- Display Calories -->
    </xsl:for-each>
    <tr>
     <td colspan="2" align="center"><b>Calories</b></td>
    </tr>
    
    <xsl:for-each select="product/calories">
    <tr>
     <td>Total</td>
     <td><xsl:value-of select="total"/></td>     
    </tr>
    
    <tr>
     <td>Fat</td>
     <td><xsl:value-of select="fat"/></td>     
    </tr>    
    </xsl:for-each>
    
    
    <!-- Display Fat -->    
    <tr>
     <td colspan="2" align="center"><b>Fat</b></td>
    </tr>
    
    <xsl:for-each select="product/fat">
    <tr>
     <td>Total</td>
     <td><xsl:value-of select="total"/></td>     
    </tr>
    
    <tr>
     <td>Saturated</td>
     <td><xsl:value-of select="saturated"/></td>     
    </tr>    
    </xsl:for-each>

    
    <!-- Display Carbohydrates -->    
    <tr>
     <td colspan="2" align="center"><b>Carbohydrates</b></td>
    </tr>
    
    <xsl:for-each select="product/carbohydrates">
    <tr>
     <td>Total</td>
     <td><xsl:value-of select="total"/></td>     
    </tr>
    
    <tr>
     <td>Fiber</td>
     <td><xsl:value-of select="fiber"/></td>     
    </tr>
    
    <tr>
     <td>sugars</td>
     <td><xsl:value-of select="sugars"/></td>     
    </tr>
    
    </xsl:for-each>
    
   </table>
  </body>
</xsl:template>
</xsl:stylesheet>