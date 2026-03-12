-- SapHana.Odbc SapHanaOdbc

UPDATE
	"Issue5351Table" "x"
SET
	"Test" = NULL
WHERE
	"x"."Id" = 1

-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Id",
	"x"."Test"
FROM
	"Issue5351Table" "x"
WHERE
	"x"."Id" = 1
LIMIT 2

-- SapHana.Odbc SapHanaOdbc

UPDATE
	"Issue5351Table" "x"
SET
	"Test" = 'X'
WHERE
	"x"."Id" = 2

-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Id",
	"x"."Test"
FROM
	"Issue5351Table" "x"
WHERE
	"x"."Id" = 2
LIMIT 2

-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Id",
	"x"."Test"
FROM
	"Issue5351Table" "x"
WHERE
	"x"."Test" = 'X'

