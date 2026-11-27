-- SapHana.Native SapHana
SELECT
	CAST("e"."Value1" / "j"."Value1" AS Integer),
	MOD("e"."Value1", "j"."Value1"),
	"e"."Dbl" / "j"."Dbl",
	CAST("e"."Value1" / ("j"."Value1" * 2) AS Integer)
FROM
	"MissedDivisorEntity" "e"
		LEFT JOIN "MissedDivisorEntity" "j" ON "j"."Id" = "e"."Id" + 1000

