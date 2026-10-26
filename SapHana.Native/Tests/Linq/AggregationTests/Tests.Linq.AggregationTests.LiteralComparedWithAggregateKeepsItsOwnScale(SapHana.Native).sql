-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	(
		SELECT
			"g_1"."Id"
		FROM
			"ScaledDecimalRow" "g_1"
		GROUP BY
			"g_1"."Id"
		HAVING
			MAX("g_1"."Value") = 1.004
	) "t1"

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	(
		SELECT
			"g_1"."Id"
		FROM
			"ScaledDecimalRow" "g_1"
		GROUP BY
			"g_1"."Id"
		HAVING
			MAX("g_1"."Value") < 1.004
	) "t1"

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX("g_1"."Converted") as "Max_1"
		FROM
			"ScaledDecimalRow" "g_1"
		GROUP BY
			"g_1"."Id"
	) "t1"
WHERE
	"t1"."Max_1" IN (1.004)

