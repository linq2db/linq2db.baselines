-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Test1 Char -- String
SET     @Test1 = NULL

UPDATE
	"TableWithConverterValue"
SET
	"Test1" = :Test1
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
DECLARE @Test1 Char(1) -- String
SET     @Test1 = 'X'

UPDATE
	"TableWithConverterValue"
SET
	"Test1" = :Test1
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
DECLARE @Test1 Char(1) -- String
SET     @Test1 = 'X'

SELECT
	x."Id",
	x."NoConversion",
	x."Test1",
	x."Test2"
FROM
	"TableWithConverterValue" x
WHERE
	x."Test1" = :Test1

