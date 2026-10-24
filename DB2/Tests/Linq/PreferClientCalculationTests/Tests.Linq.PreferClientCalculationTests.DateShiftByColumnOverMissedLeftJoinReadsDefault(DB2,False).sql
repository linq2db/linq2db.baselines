-- DB2 DB2.LUW DB2LUW
SELECT
	"e"."Value1",
	"j"."Date" + "e"."Value1" DAY,
	Extract(year from ("j"."Date" + "e"."Value1" DAY)),
	Extract(day from ("j"."Date" + "e"."Value1" DAY))
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "j"."Id" = "e"."Id" + 1000

