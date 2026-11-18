-- Firebird.5 Firebird4
SELECT
	DateAdd(Day, -"e"."Value1", "j"."Date"),
	DateAdd(Day, -1, "j"."Date")
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "j"."Id" = "e"."Id" + 1000

