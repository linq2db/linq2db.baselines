-- Oracle.11.Managed Oracle11

UPDATE
	"TableWithConverterValue" x
SET
	"Test1" = NULL
WHERE
	x."Id" = 1

-- Oracle.11.Managed Oracle11

SELECT
	x."Id",
	x."NoConversion",
	x."Test1",
	x."Test2"
FROM
	"TableWithConverterValue" x
WHERE
	x."Id" = 1 AND ROWNUM <= 2

-- Oracle.11.Managed Oracle11

UPDATE
	"TableWithConverterValue" x
SET
	"Test1" = 'X'
WHERE
	x."Id" = 2

-- Oracle.11.Managed Oracle11

SELECT
	x."Id",
	x."NoConversion",
	x."Test1",
	x."Test2"
FROM
	"TableWithConverterValue" x
WHERE
	x."Id" = 2 AND ROWNUM <= 2

-- Oracle.11.Managed Oracle11

SELECT
	x."Id",
	x."NoConversion",
	x."Test1",
	x."Test2"
FROM
	"TableWithConverterValue" x
WHERE
	x."Test1" = 'X'

