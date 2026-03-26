<?xml version="1.0" encoding="UTF-8"?>
<!-- Custom EPUB stylesheet override to read ISBN from docinfo -->
<!-- This overrides the mock-UUID variable in pretext-epub.xsl -->
<!-- to use the actual ISBN from docinfo element when available -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- Override the mock-UUID variable to read ISBN from docinfo -->
<!-- This variable is defined in pretext-epub.xsl (line 86) -->
<!-- We redefine it here with higher priority -->
<xsl:variable name="mock-UUID">
    <xsl:choose>
        <xsl:when test="$docinfo/isbn">
            <xsl:value-of select="$docinfo/isbn"/>
        </xsl:when>
        <xsl:otherwise>
            <xsl:text>mock-123456789-0-987654321</xsl:text>
        </xsl:otherwise>
    </xsl:choose>
</xsl:variable>

</xsl:stylesheet>
