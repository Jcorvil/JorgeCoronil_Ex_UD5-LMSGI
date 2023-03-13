<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <l>Nombre y Apellidos: Jorge Coronil Villalba</l>
                <table border="1">
                    <tr>
                        <xsl:for-each select="bib/libro">
                        <xsl:sort select="precio" order="descending"/>
                            <tr>
                                <td><xsl:value-of select="precio"/></td>
                                <td><xsl:value-of select="titulo"/></td>
                                <td>
                                    <ul>
                                        <xsl:for-each select="libro[@año]">
                                          <xsl:value-of select="."/>
                                        </xsl:for-each>
                                    </ul>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>