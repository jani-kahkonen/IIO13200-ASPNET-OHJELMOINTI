<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="Schedule">
		<Schedule>
			<xsl:apply-templates select="Shows/Show" />
		</Schedule>
	</xsl:template>
	<xsl:template match="Show">
		<Show>
			<xsl:attribute name="Theatre">
				<xsl:value-of select="TheatreID" />
			</xsl:attribute>
			<xsl:attribute name="Image">
				<xsl:value-of select="Images/EventSmallImagePortrait" />
			</xsl:attribute>
		</Show>
	</xsl:template>
</xsl:stylesheet>