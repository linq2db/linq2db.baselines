-- DB2 DB2.LUW DB2LUW
SELECT
	"e"."Value1",
	Coalesce("j"."Date", '0001-01-01-00.00.00.000000') + "e"."Value1" DAY,
	Extract(year from (Coalesce("j"."Date", '0001-01-01-00.00.00.000000') + "e"."Value1" DAY)),
	Extract(day from (Coalesce("j"."Date", '0001-01-01-00.00.00.000000') + "e"."Value1" DAY))
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "j"."Id" = "e"."Id" + 1000

