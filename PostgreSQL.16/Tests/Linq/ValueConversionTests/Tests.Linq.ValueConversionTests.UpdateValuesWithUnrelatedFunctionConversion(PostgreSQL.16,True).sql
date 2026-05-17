-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

UPDATE
	"TableWithConverterValue"
SET
	"Test1" = CASE
		WHEN ("TableWithConverterValue"."Id" > 0) THEN 'X'
		ELSE NULL
	END
WHERE
	"TableWithConverterValue"."Id" = 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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

