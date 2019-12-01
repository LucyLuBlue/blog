<?xml version = "1.0" encoding = "UTF-8"?> 
<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version="1.0">  
	
   <xsl:template match = "/"> 
      <table1 id="results" class="indent">  
        
        
            
            <thead>
               <tr bgcolor = "#9acd32"> 
                  <th colspan="3">Activities</th>  
               </tr>
               <tr>
                   <th>title</th>
                   <th>subtitle</th>
                   <th>description</th>
               </tr>
            </thead>	
        <tbody> 
            <xsl:for-each select="/activities/section">
                            <tr>
                                <td colspan="3">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="entree">
                            <tr>
                                
                                     <xsl:value-of />
                               
                                <td>
                                    <xsl:value-of select="title" />
                                </td>
                                <td align="center">
                                    <xsl:value-of select="subtitle" />
                                </td>
                                <td align="center">
                                    <xsl:value-of select="description" />
                                </td>
                            </tr>
                            </xsl:for-each>
                        </xsl:for-each>
              
           
         </tbody> 
    
       </table1><br/>
   </xsl:template>  
</xsl:stylesheet>