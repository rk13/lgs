<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml"
	xmlns:todo="http://kotov.lv/xml-lgs/todo" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
			<div>
				<xsl:apply-templates select="todo:todolist/todo:whom" />
				<table border="1">
					<xsl:for-each select="todo:todolist/todo:task">
						<tr>
							<td>
								<xsl:value-of select="todo:action" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</div>
	</xsl:template>

	<xsl:template match="todo:whom">
		<p>
			<b>List For</b>
			<i>
				<xsl:value-of select="todo:person/todo:role"></xsl:value-of>
				<xsl:text> </xsl:text>
				<xsl:value-of select="todo:person/todo:name"></xsl:value-of>
			</i>
		</p>
	</xsl:template>



</xsl:stylesheet>