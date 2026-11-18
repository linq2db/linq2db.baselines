-- SapHana.Native SapHana
SELECT
	"r"."Value"
FROM
	"CoarseConvertedRow" "r"
LIMIT 2

-- SapHana.Native SapHana
DECLARE @value TimeStamp -- DateTime
SET     @value = TIMESTAMP '2026-06-01 09:00:00.0000000'

SELECT
	COUNT(*)
FROM
	"CoarseConvertedRow" "r"
WHERE
	"r"."Value" = :"value"

-- SapHana.Native SapHana
DECLARE @value TimeStamp -- DateTime
SET     @value = TIMESTAMP '2026-06-01 09:00:00.0000000'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			"g_1"."Id"
		FROM
			"CoarseConvertedRow" "g_1"
		GROUP BY
			"g_1"."Id"
		HAVING
			MAX("g_1"."Value") = :"value"
	) "t1"

-- SapHana.Native SapHana
DECLARE @CoarseValue TimeStamp -- DateTime
SET     @CoarseValue = TIMESTAMP '2026-06-01 09:00:00.0000000'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			"g_1"."Id"
		FROM
			"CoarseConvertedRow" "g_1"
		GROUP BY
			"g_1"."Id"
		HAVING
			MAX("g_1"."Value") = :"CoarseValue"
	) "t1"

-- SapHana.Native SapHana
DECLARE @day Date
SET     @day = TIMESTAMP '2026-05-31 00:00:00.0000000'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			"g_1"."Id"
		FROM
			"CoarseConvertedRow" "g_1"
		GROUP BY
			"g_1"."Id"
		HAVING
			MIN("g_1"."Day") = :"day"
	) "t1"

-- SapHana.Native SapHana
DECLARE @CoarseConvertedDay Date
SET     @CoarseConvertedDay = TIMESTAMP '2026-05-31 00:00:00.0000000'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			"g_1"."Id"
		FROM
			"CoarseConvertedRow" "g_1"
		GROUP BY
			"g_1"."Id"
		HAVING
			MIN("g_1"."Day") = :"CoarseConvertedDay"
	) "t1"

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX("g_1"."Value") as "Max_1"
		FROM
			"CoarseConvertedRow" "g_1"
		GROUP BY
			"g_1"."Id"
	) "t1"
WHERE
	"t1"."Max_1" IN (TIMESTAMP '2026-06-01 09:00:00.0000000')

