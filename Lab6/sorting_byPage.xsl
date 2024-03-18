<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8"/>
                <link href="style.css" type="text/css" rel="stylesheet"/>
                <title>Sorting According to Page Number</title>
            </head>
            <body>
                <xsl:apply-templates select="book"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="book">
        <h1><xsl:value-of select="title"/></h1>
        <h2>by <xsl:value-of select="author/lastName"/>, <xsl:value-of select="author/firstName"/></h2>
        <table style="border-style: groove;">
            <xsl:apply-templates select="chapters/frontMatter/*">
                <xsl:sort select="@pages" data-type="number" order="ascending"/>
            </xsl:apply-templates>
            <xsl:apply-templates select="chapters/appendix">
                <xsl:sort select="@number" data-type="text" order="ascending"/>
                <xsl:sort select="@pages" data-type="number" order="ascending"/>
            </xsl:apply-templates>
            <xsl:apply-templates select="chapters/chapter">
                <xsl:sort select="@number" data-type="text" order="ascending"/>
                <xsl:sort select="@pages" data-type="number" order="ascending"/>
            </xsl:apply-templates>
        </table>
        <p>Pages: <xsl:value-of select="sum(chapters//*/@pages)"/></p>
        <p>Media Type: <xsl:value-of select="media/@type"/></p>
    </xsl:template>

    <xsl:template match="frontMatter/*">
        <tr>
            <td><xsl:value-of select="name()"/></td>
            <td>(<xsl:value-of select="@pages"/> pages)</td>
        </tr>
    </xsl:template>

    <xsl:template match="chapter">
        <tr>
            <td>Chapter <xsl:value-of select="@number"/></td>
            <td><xsl:value-of select="text()"/> (<xsl:value-of select="@pages"/> pages)</td>
        </tr>
    </xsl:template>

    <xsl:template match="appendix">
        <tr>
            <td>Appendix <xsl:value-of select="@number"/></td>
            <td><xsl:value-of select="text()"/> (<xsl:value-of select="@pages"/> pages)</td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
