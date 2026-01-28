-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id"
FROM
	"Tender" "i"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Tender" "t1"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."Id"
FROM
	"Tender" "r"
WHERE
	"r"."Id" = '00000000-0000-0000-0000-000000000000'
LIMIT 1

-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id"
FROM
	"Tender" "i"
LIMIT 1

