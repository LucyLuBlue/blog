<?xml version = "1.0" encoding = "UTF-8"?> 
<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match = "/">
      <table id="activityTable" class="indent">
         
         <thead>
            <tr bgcolor = "#9370DB">
               <td align="center">
               <th colspan="3">ACTIVITIES</th>
               </td>
            </tr>
            <tr bgcolor = "#D8BFD8" >
               <th>Select</th>
               <th>Name</th>
               <th>Field</th>
               <th>Description</th>
            </tr>
         </thead>
         <tbody>
            <xsl:for-each select="/activities/section">
               <tr bgcolor = "#87CEEB">
                  <td colspan="4">
                     <xsl:value-of select="@name" />
                  </td>
                </tr>
               <xsl:for-each select="entree">
                  <tr id="{position()}">
                      <td align="center">
                        <input name="item0" type="checkbox" />
                      </td>
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
      </table>
      <br/>
   </xsl:template>
</xsl:stylesheet>