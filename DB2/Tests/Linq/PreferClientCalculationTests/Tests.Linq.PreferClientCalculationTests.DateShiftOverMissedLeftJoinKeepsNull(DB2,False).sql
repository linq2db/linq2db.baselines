-- DB2 DB2.LUW DB2LUW
SELECT
	"j"."Date" + (-"e"."Value1") DAY,
	"j"."Date" + -1 DAY
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "j"."Id" = "e"."Id" + 1000

