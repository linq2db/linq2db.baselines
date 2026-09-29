-- SapHana.Odbc SapHanaOdbc
SELECT
	"e"."Id",
	"j"."Value1",
	Abs(Coalesce("j"."Value1", 0) - 1),
	"j"."Date",
	"e"."Date"
FROM
	"MissedJoinEntity" "e"
		LEFT JOIN "MissedJoinEntity" "j" ON "j"."Id" = "e"."Id" + 1000

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Date",
	"t1"."Flag",
	"t1"."Name"
FROM
	"MissedJoinEntity" "t1"

-- SapHana.Odbc SapHanaOdbc
SELECT
	Year(Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000000'))
FROM
	"MissedJoinEntity" "e"
		LEFT JOIN "MissedJoinEntity" "j" ON "j"."Id" = "e"."Id" + 1000

