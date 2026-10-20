-- Firebird.4 Firebird4
SELECT
	CAST(LPad(CAST("j"."Value1" AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-' || LPad(CAST("j"."Value1" AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-' || LPad(CAST("j"."Value1" AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') AS Date),
	CAST(LPad(CAST("j"."Value1" AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-' || LPad(CAST("j"."Value1" AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-' || LPad(CAST("j"."Value1" AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') AS Date)
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "j"."Id" = "e"."Id" + 1000

