<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
    <style>
        table,
        tr,
        th,
        td {
            border: 1px solid;
        }
    </style>
        <table>
            <tr>
                <th>Username</th>
                <th>Nick</th>
                <th>Email</th>
            </tr>
            <xsl:for-each select="//usuario">
                <tr>
                    <td>
                        <xsl:value-of select="username"/>
                    </td>
                    <td>
                        <xsl:value-of select="nick"/>
                    </td>
                    <td>
                        <xsl:value-of select="email"/>
                    </td>
                </tr>

            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>
