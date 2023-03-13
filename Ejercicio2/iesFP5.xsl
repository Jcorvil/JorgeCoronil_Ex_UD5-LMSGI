<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <l>Nombre y Apellidos: Jorge Coronil Villalba</l>
                <h1>IES Nuestra Sra. de los Remedios</h1>
                    <table border="1">
                        <tr>
                            <th>Nombre</th>
                            <th>Año</th>
                        </tr>
                        <xsl:for-each select="ies/ciclos/ciclo">
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="decretoTitulo[@año]"/></td>
                            
                        </xsl:for-each>
                    </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>