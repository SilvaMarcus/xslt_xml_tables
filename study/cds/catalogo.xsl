<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
    <xsl:template match="/">
        <html>
            <head>
                <style>
                caption{
                    font-size:1.5em;
                }

                table{
                    margin:auto;
                }
                td {
                    padding: 10px;
                }
            </style>
            </head>
            <body>
                <table border='1'>
                    <caption>Coleção de Discos</caption>
                    <tr>
                        <th>Titulo</th>
                        <th>Artista</th>
                        <th>Year</th>
                    </tr>
                    <xsl:for-each select='catalogo/cd'>
                    <xsl:sort select="artist" />
                        <xsl:if test="year &gt; 1970">
                            
                            <tr>
                                <td>
                                    <xsl:value-of select='title' />
                                </td>
                                <td>
                                    <xsl:value-of select='artist' />
                                </td>
                                <td>
                                    <xsl:value-of select='year' />
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>