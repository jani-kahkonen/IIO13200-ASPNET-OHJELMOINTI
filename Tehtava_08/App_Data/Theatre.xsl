<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="TheatreAreas">
		<TheatreAreas>
			<xsl:apply-templates select="TheatreArea" />
		</TheatreAreas>
	</xsl:template>
	<xsl:template match="TheatreArea">
		<TheatreArea>
			<xsl:attribute name="ID">
				<xsl:value-of select="ID" />
			</xsl:attribute>
			<xsl:attribute name="Name">
				<xsl:value-of select="Name" />
			</xsl:attribute>
		</TheatreArea>
	</xsl:template>
</xsl:stylesheet>