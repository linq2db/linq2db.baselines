-- SapHana.Odbc SapHanaOdbc
DECLARE @Test Char -- AnsiStringFixedLength
SET     @Test = NULL

UPDATE
	"Issue5351Table" "x"
SET
	"Test" = ?
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
DECLARE @Test Char(1) -- AnsiStringFixedLength
SET     @Test = 'X'

UPDATE
	"Issue5351Table" "x"
SET
	"Test" = ?
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
DECLARE @Test Char(1) -- AnsiStringFixedLength
SET     @Test = 'X'

SELECT
	"x"."Id",
	"x"."Test"
FROM
	"Issue5351Table" "x"
WHERE
	"x"."Test" = ?

