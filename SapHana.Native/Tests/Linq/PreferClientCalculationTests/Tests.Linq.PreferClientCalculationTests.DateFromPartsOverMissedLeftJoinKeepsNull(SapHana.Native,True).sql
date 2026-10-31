-- SapHana.Native SapHana
SELECT
	"e"."Date",
	To_Timestamp(LPad("j"."Value1", 4, '0') || '-' || LPad("j"."Value1", 2, '0') || '-' || LPad("j"."Value1", 2, '0') || ' 00:00:00.000'),
	To_Timestamp(LPad("j"."Value1", 4, '0') || '-' || LPad("j"."Value1", 2, '0') || '-' || LPad("j"."Value1", 2, '0') || ' 00:00:00.000'),
	To_Timestamp(LPad(Year("e"."Date"), 4, '0') || '-01-01 ' || LPad(Coalesce("j"."Value1", 0), 2, '0') || ':00:00.000')
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "j"."Id" = "e"."Id" + 1000

