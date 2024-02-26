<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <title>SVG</title>
            </head>
            <body>
                <h4 id="author" title="GossJS" style="display:none">Виниченко Александр</h4>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="графика">
        <svg>
            <xsl:apply-templates select="@*|node()"/>
        </svg>
    </xsl:template>

    <xsl:template match="эллипс">
        <ellipse>
            <xsl:apply-templates select="@*|node()"/>
        </ellipse>
    </xsl:template>

    <xsl:template match="@ширина">
        <xsl:attribute name="width">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@высота">
        <xsl:attribute name="height">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>


    <xsl:template match="@заливка">
        <xsl:attribute name="fill">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@ободок">
        <xsl:attribute name="stroke">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@ширина-ободка">
        <xsl:attribute name="stroke-width">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@cx">
        <xsl:attribute name="cx">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@cy">
        <xsl:attribute name="cy">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@rx">
        <xsl:attribute name="rx">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@ry">
        <xsl:attribute name="ry">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

</xsl:stylesheet>