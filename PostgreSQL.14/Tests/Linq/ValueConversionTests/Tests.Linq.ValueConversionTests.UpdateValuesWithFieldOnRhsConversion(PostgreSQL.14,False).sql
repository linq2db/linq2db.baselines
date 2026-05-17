-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @yes Text(1) -- String
SET     @yes = 'X'
DECLARE @no Text -- String
SET     @no = NULL

UPDATE
	"TableWithConverterValue"
SET
	"Test1" = CASE
		WHEN "TableWithConverterValue"."Test2" IS NULL THEN :yes
		ELSE :no
	END
WHERE
	"TableWithConverterValue"."Id" = 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	x."Id",
	x."NoConversion",
	x."Test1",
	x."Test2"
FROM
	"TableWithConverterValue" x
WHERE
	x."Id" = 1
LIMIT 2

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	x."Id",
	x."NoConversion",
	x."Test1",
	x."Test2"
FROM
	"TableWithConverterValue" x
WHERE
	x."Id" = 1
LIMIT 2

