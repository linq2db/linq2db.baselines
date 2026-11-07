-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" "r"
WHERE
	Abs("r"."Fine") = 1.000000000005

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" "r"
WHERE
	CASE
		WHEN "r"."Id" > 0 THEN "r"."Fine"
		ELSE -"r"."Fine"
	END = 1.000000000005

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	(
		SELECT
			"g_1"."Id"
		FROM
			"ComputedDecimalRow" "g_1"
		GROUP BY
			"g_1"."Id"
		HAVING
			MAX("g_1"."Fine") = 1.000000000005
	) "t1"

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" "r"
WHERE
	Abs("r"."Wide") = 12345678901234.50

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" "r"
WHERE
	CASE
		WHEN "r"."Id" > 0 THEN "r"."Wide"
		ELSE -"r"."Wide"
	END = 12345678901234.50

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	(
		SELECT
			"g_1"."Id"
		FROM
			"ComputedDecimalRow" "g_1"
		GROUP BY
			"g_1"."Id"
		HAVING
			MAX("g_1"."Wide") = 12345678901234.50
	) "t1"

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" "r"
WHERE
	Abs("r"."Whole") = 5.00

