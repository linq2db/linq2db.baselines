-- Firebird.3 Firebird3
SELECT
	"e"."Value1",
	DateAdd(Day, "e"."Value1", "j"."Date"),
	Extract(year from DateAdd(Day, "e"."Value1", "j"."Date")),
	Extract(day from DateAdd(Day, "e"."Value1", "j"."Date"))
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "j"."Id" = "e"."Id" + 1000

