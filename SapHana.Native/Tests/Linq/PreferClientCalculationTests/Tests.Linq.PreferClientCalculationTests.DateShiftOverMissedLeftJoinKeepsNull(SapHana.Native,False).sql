-- SapHana.Native SapHana
SELECT
	Add_Days("j"."Date", -"e"."Value1"),
	Add_Days("j"."Date", -1)
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "j"."Id" = "e"."Id" + 1000

