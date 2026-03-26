-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

UPDATE
	"TableWithConverterValue"
SET
	"Test1" = NULL
WHERE
	"TableWithConverterValue"."Id" = 1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

UPDATE
	"TableWithConverterValue"
SET
	"Test1" = 'X'
WHERE
	"TableWithConverterValue"."Id" = 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	x."Id",
	x."NoConversion",
	x."Test1",
	x."Test2"
FROM
	"TableWithConverterValue" x
WHERE
	x."Id" = 2
LIMIT 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	x."Id",
	x."NoConversion",
	x."Test1",
	x."Test2"
FROM
	"TableWithConverterValue" x
WHERE
	x."Test1" = 'X'

