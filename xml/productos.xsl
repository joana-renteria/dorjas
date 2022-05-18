<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <div class="cont">
            <xsl:for-each select="//productos">
                <div>
                    <xsl:variable name="imgProd" select="'imagen'"/>
                    <hr/>
                    <img src="" alt="imagen no encontrada"/><br/><br/>
                    <h1><xsl:value-of select="droga"/></h1><br/>
                    <h5><xsl:value-of select="tipo"/></h5>
                    <p>
                        Es el principal alcaloide de un arbusto denominado Erithroxylon coca, 
                        que se cultiva en la zona occidental de America del Sur (Colombia, Peru y Bolivia). 
                        El arbusto tiene una corteza rugosa de color pardo rojizo, puede llegar a alcanzar hasta 
                        los seis metros de altura en las condiciones mas favorables, aunque en la actualidad no 
                        dejan que sobrepase los dos metros con el fin de facilitar su recoleccion.
                    </p>
                    <a href="articulos/cocaina.html" class="button">Ver mas</a><br/><br/>
                    <hr/>
                </div>
            </xsl:for-each>
        </div>
    </xsl:template>
</xsl:stylesheet>
