-- SapHana.Native SapHana
SELECT
	CAST(Nano100_Between("e"."Date", "e"."Date2") AS Double) / CAST(Nano100_Between("j"."Date", "j"."Date2") AS Double)
FROM
	"MissedDivisorEntity" "e"
		LEFT JOIN "MissedDivisorEntity" "j" ON "j"."Id" = "e"."Id" + 1000

