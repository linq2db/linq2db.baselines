-- SapHana.Odbc SapHanaOdbc
SELECT
	"e"."Value1",
	Add_Days(Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000000'), "e"."Value1"),
	Year(Add_Days(Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000000'), "e"."Value1")),
	DayOfMonth(Add_Days(Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000000'), "e"."Value1"))
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "j"."Id" = "e"."Id" + 1000

