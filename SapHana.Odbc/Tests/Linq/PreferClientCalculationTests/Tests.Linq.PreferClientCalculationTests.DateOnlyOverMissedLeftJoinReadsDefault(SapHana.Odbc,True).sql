-- SapHana.Odbc SapHanaOdbc
SELECT
	"e"."Id",
	"j"."Day",
	"e"."Day"
FROM
	"MissedDayEntity" "e"
		LEFT JOIN "MissedDayEntity" "j" ON "j"."Id" = "e"."Id" + 1000

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Day"
FROM
	"MissedDayEntity" "t1"

-- SapHana.Odbc SapHanaOdbc
SELECT
	Year(Coalesce("j"."Day", '0001-01-01'))
FROM
	"MissedDayEntity" "e"
		LEFT JOIN "MissedDayEntity" "j" ON "j"."Id" = "e"."Id" + 1000

