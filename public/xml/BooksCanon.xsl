<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml">

	<xsl:output method="xml"
				indent="yes"
				omit-xml-declaration="no"
	            doctype-system="about:legacy-compat"/>

	<!-- The following rule matches the root element,
		 irrespective of name,
	     and creates an html outline with an apply templates somewhere
	-->
	<xsl:template match="/">
		<html>
			<head>
				<title>Books</title>
				<meta charset="utf-8"/>
			</head>
			<body style="background-color: #cccccc;">
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>

	<!-- Title -->
	<xsl:template match="booksCanon/book">
		<section style="
			background-color: lightblue;
			outline: 1px solid;
			padding: 10px;
			width: 50%;
			margin: 10px auto;">
		<xsl:apply-templates/>
		</section>
	</xsl:template>
	
	<!-- Title -->
	<xsl:template match="booksCanon/book/title">
		<h1><xsl:apply-templates/></h1>
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
	</xsl:template>



	<!-- style-->
	<xsl:template match="para[@type='note']" priority="1">
		<p style="background-color: #cccccc; border: thin solid; width:300px;">
			<b><xsl:apply-templates/></b>
		</p>
	</xsl:template>

</xsl:stylesheet>