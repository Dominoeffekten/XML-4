<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml">

	<xsl:output indent="yes"
				omit-xml-declaration="no"/>

	<xsl:template match="cars">
		<div>
		<table>
			<tr>
				<th>Maker</th>
				<th>Model</th>
				<th>Year</th>
				<th>KMs</th>
				<th>Color</th>
				<th>Price</th>
				<th>Warranty</th>
			</tr>

			<xsl:for-each select="car">
				<xsl:sort select="@manufacturer"/>
					<tr>
						<td><xsl:value-of select="@manufacturer"/></td>
						<td><xsl:value-of select="@model"/></td>
						<td><xsl:value-of select="@year"/></td>
						<td><xsl:value-of select="meter"/></td>
						<td> 
							<xsl:attribute name="bgcolor"><xsl:value-of select="color"/> </xsl:attribute>
						</td>
						<td><xsl:value-of select="price"/></td>
						<td style="text-align: center;">
							<xsl:choose>
								<xsl:when test="dealersecurity[@buyback='yes']">&#10004;</xsl:when>
							</xsl:choose>
						</td>
					</tr>
			</xsl:for-each>
				<tr>
					<td colspan="4">Average price</td>
					<td>DKR</td>
					<td><xsl:value-of select="sum(car/price) div count(car/@model)"/></td>

				
				</tr>
		</table>
		</div>
	</xsl:template>

</xsl:stylesheet>