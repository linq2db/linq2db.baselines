-- SapHana.Odbc SapHanaOdbc

UPDATE
	"TableWithConverterValue" "x"
SET
	"Test1" = NULL
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

UPDATE
	"TableWithConverterValue" "x"
SET
	"Test1" = 'X'
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

SELECT
	"x"."Id",
	"x"."NoConversion",
	"x"."Test1",
	"x"."Test2"
FROM
	"TableWithConverterValue" "x"
WHERE
	"x"."Test1" = 'X'

