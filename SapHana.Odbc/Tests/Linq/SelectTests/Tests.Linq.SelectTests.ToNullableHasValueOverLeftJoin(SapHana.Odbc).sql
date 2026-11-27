-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Value1"
FROM
	"NullableLeftJoinTable" "t1"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"l"."Value1"
FROM
	"NullableLeftJoinTable" "p"
		LEFT JOIN "NullableLeftJoinTable" "l" ON "l"."Id" = "p"."Id" + 1

