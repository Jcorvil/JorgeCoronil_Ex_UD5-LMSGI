<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <ul>
                    <ul>Nombre y Apellidos: Jorge Coronil Villalba</ul>
                </ul>
                <ul>
                    <xsl:for-each select="ies/ciclos/ciclo">
                        <ul>"<xsl:value-of select="nombre"/>"</ul>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>