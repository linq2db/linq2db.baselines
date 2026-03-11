-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"TransactionLine" "t1"
WHERE
	"t1"."Id" = 2
LIMIT 2

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"TransactionLine" "t1"
WHERE
	"t1"."Id" = 2
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
DECLARE @UserId Int -- Int32
SET     @UserId = 2

SELECT
	"x"."Id"
FROM
	"TransactionLine" "x"
WHERE
	"x"."Id" = ?
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
DECLARE @UserId Int -- Int32
SET     @UserId = 2

SELECT
	"x"."Id"
FROM
	"TransactionLine" "x"
WHERE
	"x"."Id" = ?
LIMIT 2

