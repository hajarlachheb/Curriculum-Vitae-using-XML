<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"     version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>CV Transformation :.xml en HTML</title>
              <style>
                      body{
                              margin:10%;                      
                              margin-top:2%;                      
                      }              
              </style>
            </head>
                                    <body style ='font-family :Arial;background-color:lightblue;background-image: linear-gradient(to bottom, rgba(188,214,255,0.5), rgba(0,0,128,0.5));'>
                <h1 align='center' style='color: rgb(54, 95, 146);text-shadow: 2px 2px 8px #FFFFFF'>Curriculum Vitae<xsl:value-of select="cv/@titre"/></h1>
                  <h3 ><xsl:value-of select="cv/etat_civil/photo"/></h3>
                  <img src="photohajar.jpg" align="right" width="160px" border="2px" solid="#dddddd"/><br/>
                <h3 style ='color: rgb(54, 95, 145);font-size:0.9em;'><xsl:value-of select="cv/etat_civil/Prénom"/></h3>
                <h3 style ='color: rgb(54, 95, 145);font-size:0.9em;'> <xsl:value-of select="cv/etat_civil/Nom"/></h3>
                <h3 style ='color: rgb(54, 95, 145);font-size:0.9em;'><xsl:value-of select="cv/etat_civil/datenaissance"/></h3>
                <h3 style ='color: rgb(54, 95, 145);font-size:0.9em;'><xsl:value-of select="cv/etat_civil/addresse"/></h3>
                <h3 style ='color: rgb(54, 95, 145);font-size:0.9em;'><xsl:value-of select="cv/etat_civil/telephone"/></h3>
                <h3 style ='color: rgb(54, 95, 145);font-size:0.9em;'><xsl:value-of select="cv/etat_civil/email"/></h3>
                <h1 align='center' style ='color: rgb(54, 95, 146);font-size:1.7em;padding: 30px;text-shadow: 2px 2px 8px #FFFFFF' ><xsl:value-of select="cv/titre"/></h1>
    <h2 style ='color:#000066;font-size:1.2em;padding: 8px;text-decoration: underline;text-shadow: 2px 2px 8px #FFFFFF'> Cursus Académique: </h2>
                 <xsl:for-each select="cv/CursusAcademique/formation">
                <h3 style ='font-size:0.9em;padding: 4px;'>  <xsl:value-of select="dateDebut"/>- <xsl:value-of select="dateFin"/> :  <xsl:value-of select="libelle"/>, <xsl:value-of select="ecole"/>,  <xsl:value-of select="ville"/>, <xsl:value-of select="pays"/> </h3>
                </xsl:for-each>
                        <h2 style ='color:#000066;font-size:1.2em;padding: 8px;text-decoration: underline;text-shadow: 2px 2px 8px #FFFFFF'> Expérience Professionnelle </h2>
                                    <xsl:for-each select="cv/ExperiencesProfessionnelles/experience">
                <h3 style ='font-size:0.9em;padding: 4px'> <xsl:value-of select="dateDebut "/>-<xsl:value-of select="dateFin"/> :  <xsl:value-of select="intitule"/>, <xsl:value-of select="organisme"/>,   <xsl:value-of select="ville"/>, <xsl:value-of select="pays"/> </h3>
                </xsl:for-each>
                <h2 style ='color:#000066;font-size:1.2em;padding: 8px;text-decoration: underline;text-shadow: 2px 2px 8px #FFFFFF'>Competences</h2>
                 <xsl:for-each select="cv/Competences/competence">
                <h3 style ='font-size:0.9em;padding: 4px'><xsl:value-of select="sujet"/> : <xsl:value-of select="details"/> </h3>
                </xsl:for-each>
                <h2 style ='color:#000066;font-size:1.2em;padding: 8px;text-decoration: underline;text-shadow: 2px 2px 8px #FFFFFF'>Langues: </h2>
                      <xsl:for-each select="cv/Langues/langue">
                <h3 style ='font-size:0.9em;padding: 4px'><xsl:value-of select="lan"/> : <xsl:value-of select="niveaumaitrise"/> </h3>
                </xsl:for-each>
                <h2 style ='color:#000066;font-size:1.2em;padding: 8px;text-decoration: underline;text-shadow: 2px 2px 8px #FFFFFF'>Centre d'interet: </h2>
                    <xsl:for-each select="cv/CentresInteret/loisirs">
                <h3 style ='font-size:0.9em;padding: 4px;'><xsl:value-of select="nomduloisir"/> </h3>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
