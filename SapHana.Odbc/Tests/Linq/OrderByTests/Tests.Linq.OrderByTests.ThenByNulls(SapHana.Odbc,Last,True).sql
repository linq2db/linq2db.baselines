-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	"t1"."Id",
	"t1"."Grp",
	"t1"."Value"
FROM
	"NullsTable" "t1"
ORDER BY
	"t1"."Grp",
	"t1"."Value" DESC NULLS LAST,
	"t1"."Id"
LIMIT ?

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Grp",
	"t1"."Value"
FROM
	"NullsTable" "t1"

