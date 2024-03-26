<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Nutrition Information</title>
            </head>
            <body>
                <h2>Nutrition Facts for <xsl:value-of select="nutrition/product/@name"/></h2>
                <table border="1">
                    <tr>
                        <th>Serving Size</th>
                        <td><xsl:value-of select="nutrition/product/servingSize"/></td>
                    </tr>
                    <tr>
                        <th>Calories</th>
                        <td>Total: <xsl:value-of select="nutrition/product/calories/@total"/> (From Fat: <xsl:value-of select="nutrition/product/calories/@fromFat"/>)</td>
                    </tr>
                    <tr>
                        <th>Total Fat</th>
                        <td><xsl:value-of select="nutrition/product/fat/@totalGrams"/>g (Saturated: <xsl:value-of select="nutrition/product/fat/saturatedGrams"/>g)</td>
                    </tr>
                    <tr>
                        <th>Cholesterol</th>
                        <td><xsl:value-of select="nutrition/product/cholesterol/@milligrams"/>mg</td>
                    </tr>
                    <tr>
                        <th>Sodium</th>
                        <td><xsl:value-of select="nutrition/product/sodium/@milligrams"/>mg</td>
                    </tr>
                    <tr>
                        <th>Total Carbohydrates</th>
                        <td><xsl:value-of select="nutrition/product/carbohydrates/@totalGrams"/>g (Fiber: <xsl:value-of select="nutrition/product/carbohydrates/fiberGrams"/>g, Sugars: <xsl:value-of select="nutrition/product/carbohydrates/sugarGrams"/>g)</td>
                    </tr>
                    <tr>
                        <th>Protein</th>
                        <td><xsl:value-of select="nutrition/product/protein/@grams"/>g</td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
