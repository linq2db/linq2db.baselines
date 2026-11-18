-- DB2 DB2.LUW DB2LUW
SELECT
	CAST(LPad("j"."Value1", 4, '0') || '-' || LPad("j"."Value1", 2, '0') || '-' || LPad("j"."Value1", 2, '0') AS Date),
	CAST(LPad("j"."Value1", 4, '0') || '-' || LPad("j"."Value1", 2, '0') || '-' || LPad("j"."Value1", 2, '0') AS Date)
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "j"."Id" = "e"."Id" + 1000

