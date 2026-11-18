-- SapHana.Native SapHana
SELECT
	"e"."Value1",
	Add_Days("j"."Date", "e"."Value1"),
	Year(Add_Days("j"."Date", "e"."Value1")),
	DayOfMonth(Add_Days("j"."Date", "e"."Value1"))
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "j"."Id" = "e"."Id" + 1000

