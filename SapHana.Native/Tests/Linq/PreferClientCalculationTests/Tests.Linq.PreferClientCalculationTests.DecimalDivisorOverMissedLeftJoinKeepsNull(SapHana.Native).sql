-- SapHana.Native SapHana
SELECT
	"e"."Dec" / "j"."Dec"
FROM
	"MissedDivisorEntity" "e"
		LEFT JOIN "MissedDivisorEntity" "j" ON "j"."Id" = "e"."Id" + 1000

