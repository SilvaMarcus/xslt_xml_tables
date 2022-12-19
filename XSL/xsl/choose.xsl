<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
     
     <xsl:template match="catalogo"> <!-- esta lincando os dados com o root do xml a raiz 'catalogo' -->
          <html>
               
               <header>
                    <style>
                         table{
                         width: 500px;
                         margin: 3rem auto;
                         border-collapse:collapse;
                          font-family: 'Arial';
                         }
                         
                         td,th{
                         padding: 1rem;
                         text-align:center;
                         }
                         
                         th{
                         background-color: lightgrey;
                         font-size: 1.3rem;
                         }
                    </style>
                    
               </header>
               <body>
                    <table border ='1'>
                         <tr>
                              <th>Title</th>
                              <th>Artist</th>
                              <th width='30px'>Year</th>
                         </tr>
                         <xsl:for-each select="cd">
                              <xsl:sort select="year"></xsl:sort>   
                              <tr>         
                                     
                                   <td><xsl:value-of select="title"/> </td>
                                   <td> <xsl:value-of select="artist"/></td>

                                   <xsl:choose>

                                        <xsl:when test="year &lt; 1999">
                                             <td bgcolor='#8B0000' style='color: #fff;' ><xsl:value-of select="year"/> </td>
                                        </xsl:when>

                                        <xsl:otherwise>
                                             <td bgcolor='#7B68EE' style='color:#fff;' ><xsl:value-of select="year"/> </td>
                                        </xsl:otherwise>

                                   </xsl:choose>

                                  
                              </tr>
                              
                              
                              
                         </xsl:for-each>     
                    </table>
                    
               </body>
          </html>
          
     </xsl:template>
</xsl:stylesheet>