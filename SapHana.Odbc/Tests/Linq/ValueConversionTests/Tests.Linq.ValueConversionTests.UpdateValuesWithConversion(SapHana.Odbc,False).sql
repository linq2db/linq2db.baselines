-- SapHana.Odbc SapHanaOdbc
DECLARE @Test1 Char -- AnsiStringFixedLength
SET     @Test1 = NULL

UPDATE
	"TableWithConverterValue" "x"
SET
	"Test1" = ?
WHERE
	"x"."Id" = 1

-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Id",
	"x"."NoConversion",
	"x"."Test1",
	"x"."Test2"
FROM
	"TableWithConverterValue" "x"
WHERE
	"x"."Id" = 1
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
DECLARE @Test1 Char(1) -- AnsiStringFixedLength
SET     @Test1 = 'X'

UPDATE
	"TableWithConverterValue" "x"
SET
	"Test1" = ?
WHERE
	"x"."Id" = 2

-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Id",
	"x"."NoConversion",
	"x"."Test1",
	"x"."Test2"
FROM
	"TableWithConverterValue" "x"
WHERE
	"x"."Id" = 2
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
DECLARE @Test1 Char(1) -- AnsiStringFixedLength
SET     @Test1 = 'X'

SELECT
	"x"."Id",
	"x"."NoConversion",
	"x"."Test1",
	"x"."Test2"
FROM
	"TableWithConverterValue" "x"
WHERE
	"x"."Test1" = ?

