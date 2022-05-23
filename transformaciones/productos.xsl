<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <xsl:for-each select="//producto">
            <div>
                <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="imagen"/>
                        </xsl:attribute>
                </img>
                <h1><xsl:value-of select="nombre"/></h1>
                <h5><xsl:value-of select="droga"/></h5>
                <p>Vendedor: <xsl:value-of select="vendedor"/></p>
                <p>Stock: <xsl:value-of select="stock"/></p>
                <a href="" class="button">Comprar</a><br/><br/>
            </div>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
