<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="cv">
        <table border="1">
            <tr>
                <th> Date debut</th>
                <th> Date fin</th>
                <th> Formation</th>
                <th> Ecole</th>
                <th> Ville</th>
                <th> Pays</th> </tr>
            
            <xsl:apply-templates/>
        </table>
    </xsl:template>
    
    
    <xsl:template match="CursusAcademique/formation">
        <tr>
            <td>  <xsl:value-of select ="dateDebut" /></td>
            
            <td>  <xsl:value-of select ="dateFin"  /></td>
            
            <td>  <xsl:value-of select ="libelle"  /></td>
            <td>  <xsl:value-of select ="ecole"  /></td>       
            
            <td>  <xsl:value-of select ="ville"  /></td>
            
            <td>  <xsl:value-of select ="pays"  /></td>
        </tr>

        
    </xsl:template>
</xsl:stylesheet>
