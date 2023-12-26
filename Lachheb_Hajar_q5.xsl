<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"     version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>CV Transformation :.xml en HTML</title>
            </head>
          <body>
                <h1>CV<xsl:value-of select="cv/@titre"/></h1>
                <h3><xsl:value-of select="cv/etat_civil/Prénom"/></h3>
                <h3> <xsl:value-of select="cv/etat_civil/Nom"/></h3>
                <h3><xsl:value-of select="cv/etat_civil/datenaissance"/></h3>
                <h3><xsl:value-of select="cv/etat_civil/addresse"/></h3>
                <h3><xsl:value-of select="cv/etat_civil/telephone"/></h3>
                <h3><xsl:value-of select="cv/etat_civil/email"/></h3>
                <h1><xsl:value-of select="cv/titre"/></h1>
                <h2> Cursus Académique: </h2>
                 <xsl:for-each select="cv/CursusAcademique/formation">
                <h3>  <xsl:value-of select="dateDebut"/>- <xsl:value-of select="dateFin"/> :  <xsl:value-of select="libelle"/>, <xsl:value-of select="ecole"/>,  <xsl:value-of select="ville"/>, <xsl:value-of select="pays"/> </h3>
                </xsl:for-each>
                <h2> Expérience Professionnelle </h2>
                   <xsl:for-each select="cv/ExperiencesProfessionnelles/experience">
                <h3> <xsl:value-of select="dateDebut "/>-<xsl:value-of select="dateFin"/> :  <xsl:value-of select="intitule"/>, <xsl:value-of select="organisme"/>,   <xsl:value-of select="ville"/>, <xsl:value-of select="pays"/> </h3>
                </xsl:for-each>
                <h2>Competences:    </h2>
                   <xsl:for-each select="cv/Competences/competence">
                <h3><xsl:value-of select="sujet"/>- <xsl:value-of select="details"/> </h3>
                </xsl:for-each>
                <h2>Langues: </h2>
                   <xsl:for-each select="cv/Langues/langue">
                <h3 > <xsl:value-of select="lan"/> : <xsl:value-of select="niveaumaitrise"/> </h3>
                </xsl:for-each>
                <h2>Centre d'interet: </h2>
                   <xsl:for-each select="cv/CentresInteret/loisirs">
                <h3><xsl:value-of select="nomduloisir"/> </h3>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>