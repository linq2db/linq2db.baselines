-- SapHana.Native SapHana
SELECT
	To_Timestamp(LPad("j"."Value1", 4, '0') || '-' || LPad("j"."Value1", 2, '0') || '-' || LPad("j"."Value1", 2, '0') || ' 00:00:00.000'),
	To_Timestamp(LPad("j"."Value1", 4, '0') || '-' || LPad("j"."Value1", 2, '0') || '-' || LPad("j"."Value1", 2, '0') || ' 00:00:00.000')
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "j"."Id" = "e"."Id" + 1000

