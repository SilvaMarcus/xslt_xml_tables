<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="collection">
<html>
    <body>

        <table border="1">

            <tr>
                <th>Title</th>
                <th>Year</th>
                <th>Genre</th>
            </tr>


            <xsl:for-each select="movie">
                <tr>
                    <td> <xsl:value-of select="title" />  </td>
                    <td> <xsl:value-of select="year" /> </td>
                    <td> <xsl:value-of select="genre" /> </td>
                </tr>
            </xsl:for-each>
        </table>

  
    </body> 
</html>
</xsl:template>
</xsl:stylesheet>