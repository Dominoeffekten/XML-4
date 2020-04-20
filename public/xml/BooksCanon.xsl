<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml">

	<xsl:output indent="yes"
				omit-xml-declaration="no"/>
	<!-- Root -->
	<xsl:template match="booksCanon">
		<div>
			<xsl:apply-templates/>
		</div>
	</xsl:template>
	
	<!-- Title -->
	<xsl:template match="booksCanon/book/title">
		<h3><xsl:apply-templates/></h3>
	</xsl:template>

	<!-- edition -->
	<xsl:template match="booksCanon/book/edition">
		<p><b>Edition: </b> <xsl:apply-templates/></p>
	</xsl:template>

	<!-- author -->
	<xsl:template match="booksCanon/book/authors/author">
		<p><b>Author: </b> <xsl:apply-templates/></p>
	</xsl:template>

	<!-- publisher -->
	<xsl:template match="booksCanon/book/publisher">
		<p><b>Publisher: </b> <xsl:apply-templates/></p>
	</xsl:template>

	<!-- pages -->
	<xsl:template match="booksCanon/book/pages">
		<p><b>Pages: </b> <xsl:apply-templates/></p>
	</xsl:template>

	<!-- isbn -->
	<xsl:template match="booksCanon/book/isbn">
		<p><b>ISBN: </b> <xsl:apply-templates/></p>
	</xsl:template>

	<!-- price -->
	<xsl:template match="booksCanon/book/price">
		<p><b>Price: </b> <xsl:apply-templates/></p>
	</xsl:template>

	<!-- currency -->
	<xsl:template match="booksCanon/book/currency">
		<p><b>Currency: </b> <xsl:apply-templates/></p>
	</xsl:template>

	<!-- comments -->
	<xsl:template match="booksCanon/book/comments">
		<p><b>Comments: </b> <xsl:apply-templates/></p>
		<hr />
	</xsl:template>
	

</xsl:stylesheet>