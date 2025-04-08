<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match = "/">
	<html>
  <head>
    <title>Генерация SQL для файла specialities.xml</title>
  </head>
  <body>
    <h1>
      Генерация SQL для файла specialities.xml
    </h1>
    <xsl:for-each select = "objects/object">
      INSERT INTO specialities VALUES(nextval('specialities_id_seq'),
        '<xsl:value-of select = "name/text()"/>',
        '<xsl:value-of select = "code/text()"/>',
        '<xsl:value-of select = "level/text()"/>',
        <xsl:value-of select = "level-id/text()"/>,
        '<xsl:value-of select = "generation/text()"/>',
        <xsl:value-of select = "generation-id/text()"/>,
        '<xsl:value-of select = "type/text()"/>',
        <xsl:value-of select = "type-id/text()"/>
      );
      <br/>
    </xsl:for-each>
  </body>
  </html>  
  </xsl:template>
</xsl:stylesheet>