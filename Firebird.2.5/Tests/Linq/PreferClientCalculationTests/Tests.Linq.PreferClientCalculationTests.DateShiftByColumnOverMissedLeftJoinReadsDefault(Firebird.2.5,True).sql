-- Firebird.2.5 Firebird
SELECT
	"e"."Value1",
	DateAdd(Day, "e"."Value1", Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000')),
	Extract(year from DateAdd(Day, "e"."Value1", Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000'))),
	Extract(day from DateAdd(Day, "e"."Value1", Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000')))
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "j"."Id" = "e"."Id" + 1000

