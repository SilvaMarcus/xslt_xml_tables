<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
     
     <xsl:template match="catalogo"> <!-- esta lincando os dados com o root do xml a raiz 'catalogo' -->
          <html>
               
               <header>
                    <style>
                         table{
                         width: 500px;
                         margin:auto;
                         }
                         
                         td,th{
                         padding: 1rem;
                         text-align:center;
                         }
                         
                         th{
                         background-color: lightgrey;
                         color: #fff;
                         }
                         
                    </style>
                    
               </header>
               <body>
                    <table border ='1'>
                         <tr>
                              <th>Title</th>
                              <th>Artist</th>
                              <th>Year</th>
                         </tr>
                         
                         <xsl:for-each select="cd">
                              <!-- Primeiro criar o stylesheet, ele é similar o <html> </html> após isso criar o <xsl: template match='' que é similar ao <body> 
                                   Após ter feito isso, voce criar um documento html dentro, feito isso voce pode criar o layout da tabela livremente e usar o xsl para aplicar os dados de forma dinamica.
                              -->
                              <xsl:sort select="artist"/> <!-- Esta selecionando os artistas e ordenando por ordem alfabetica -->

                              <!-- xsl:if atribui um teste condicional para aplicar determinadas ações e caminhos no documento -->
                              <xsl:if test="year &gt; 2000 "> <!-- esta verificando se o ano é maior que 2000 atraves do atributo test=''-->  
                              <tr>     
                                   <td><xsl:value-of select="title"/> </td>
                                   <td> <xsl:value-of select="artist"/></td>
                                   <td><xsl:value-of select="year"/></td>
                              </tr>
                                 </xsl:if>
                         </xsl:for-each>     
                    </table>
                    
               </body>
          </html>
          
     </xsl:template>
</xsl:stylesheet>
