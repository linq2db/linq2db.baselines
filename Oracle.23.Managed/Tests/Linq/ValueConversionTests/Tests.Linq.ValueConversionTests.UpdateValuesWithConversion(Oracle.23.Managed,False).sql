-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Test1 Char -- AnsiStringFixedLength
SET     @Test1 = NULL

UPDATE
	"TableWithConverterValue" x
SET
	"Test1" = :Test1
WHERE
	x."Id" = 1

-- Oracle.23.Managed Oracle.Managed Oracle12

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

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Test1 Char(1) -- AnsiStringFixedLength
SET     @Test1 = 'X'

UPDATE
	"TableWithConverterValue" x
SET
	"Test1" = :Test1
WHERE
	x."Id" = 2

-- Oracle.23.Managed Oracle.Managed Oracle12

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

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Test1 Char(1) -- AnsiStringFixedLength
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

