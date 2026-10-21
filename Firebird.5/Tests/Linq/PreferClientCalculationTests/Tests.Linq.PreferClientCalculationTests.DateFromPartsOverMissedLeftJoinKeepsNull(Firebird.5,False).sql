-- Firebird.5 Firebird4
SELECT
	"e"."Date",
	CAST(LPad(CAST("j"."Value1" AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-' || LPad(CAST("j"."Value1" AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-' || LPad(CAST("j"."Value1" AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') AS TimeStamp),
	CAST(LPad(CAST("j"."Value1" AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-' || LPad(CAST("j"."Value1" AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-' || LPad(CAST("j"."Value1" AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') AS TimeStamp),
	CAST(LPad(CAST(Extract(year from "e"."Date") AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-01-01 ' || LPad(CAST(Coalesce("j"."Value1", 0) AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || ':00:00.000' AS TimeStamp)
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "j"."Id" = "e"."Id" + 1000

