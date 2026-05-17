-- SapHana.Odbc SapHanaOdbc

UPDATE
	"TableWithConverterValue" "x"
SET
	"Test1" = CASE
		WHEN "x"."Test2" IS NULL THEN 'X'
		ELSE NULL
	END
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

