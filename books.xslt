<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<style>
		body {
			background-image: url('images/bg2.jpg');
			background-size: cover;
		}
		table {
		  border-collapse: collapse;
		  width: 100%;
		}
		th, td {
		  border: 1px solid black;
		  padding: 8px;
		  text-align: left;
		}
		th {
		  background-color: #030266;
		  color: white;
		}
		
		td {
			background-color: white;
		}
	</style>
	<title>Book List</title>
	<body>
		<h2 text-align="center">Book List</h2>
		<table border="2">
			<tr>
				<th>Title</th>
				<th>Author</th>
				<th>Genre</th>
				<th>Year</th>
				<th>Price</th>
			</tr>
			<xsl:for-each select="bookstore/book">
			<tr>
				<td><xsl:value-of select="title"/></td>
				<td><xsl:value-of select="author"/></td>
				<td><xsl:value-of select="genre"/></td>
				<td><xsl:value-of select="year"/></td>
				<td><xsl:value-of select="price"/></td>
			</tr>
			</xsl:for-each>
		</table>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>