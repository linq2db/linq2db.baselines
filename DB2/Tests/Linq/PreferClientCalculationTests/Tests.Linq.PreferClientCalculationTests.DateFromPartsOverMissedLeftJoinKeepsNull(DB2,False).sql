-- DB2 DB2.LUW DB2LUW
SELECT
	"e"."Date",
	CAST(LPad("j"."Value1", 4, '0') || '-' || LPad("j"."Value1", 2, '0') || '-' || LPad("j"."Value1", 2, '0') AS timestamp),
	CAST(LPad("j"."Value1", 4, '0') || '-' || LPad("j"."Value1", 2, '0') || '-' || LPad("j"."Value1", 2, '0') AS timestamp),
	CAST(LPad(Extract(year from "e"."Date"), 4, '0') || '-01-01 ' || LPad(Coalesce("j"."Value1", 0), 2, '0') || ':00:00.000' AS timestamp)
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "j"."Id" = "e"."Id" + 1000

