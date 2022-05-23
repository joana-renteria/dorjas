<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <xsl:variable name="usuario"/>
        <xsl:for-each select="//usuario[username='$usuario']">
            <div>
                <p>Introduce el nombre de usuario o correo electronico:</p>
                <input type="text" id="usuario" > 
                    <xsl:attribute name="value">
                        <xsl:value-of select="username"/>
                    </xsl:attribute>
                </input>
                <p>Introduce la </p>
                <input type="password" id="passwd">
                    <xsl:attribute name="value">
                        <xsl:value-of select="contrasena"/>
                    </xsl:attribute>
                </input>
                <input type="text" id="nick">
                    <xsl:attribute name="value">
                        <xsl:value-of select="nick"/>
                    </xsl:attribute>
                </input>
                <input type="text" id="email">
                    <xsl:attribute name="value">
                        <xsl:value-of select="email"/>
                    </xsl:attribute>
                </input>
            </div>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
