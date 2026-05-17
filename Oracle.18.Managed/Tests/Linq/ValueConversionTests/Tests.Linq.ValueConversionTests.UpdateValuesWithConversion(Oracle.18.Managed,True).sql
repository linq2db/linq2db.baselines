-- Oracle.18.Managed Oracle.Managed Oracle12

UPDATE
	"TableWithConverterValue" x
SET
	"Test1" = NULL
WHERE
	x."Id" = 1

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."NoConversion",
	x."Test1",
	x."Test2"
FROM
	"TableWithConverterValue" x
WHERE
	x."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12

UPDATE
	"TableWithConverterValue" x
SET
	"Test1" = 'X'
WHERE
	x."Id" = 2

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."NoConversion",
	x."Test1",
	x."Test2"
FROM
	"TableWithConverterValue" x
WHERE
	x."Id" = 2
FETCH NEXT 2 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."NoConversion",
	x."Test1",
	x."Test2"
FROM
	"TableWithConverterValue" x
WHERE
	x."Test1" = 'X'

