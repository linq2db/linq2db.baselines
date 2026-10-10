-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Value"
FROM
	"CoarseConvertedRow" "r"
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
DECLARE @value DateTime
SET     @value = TIMESTAMP '2026-06-01 09:00:00.0000000'

SELECT
	COUNT(*)
FROM
	"CoarseConvertedRow" "r"
WHERE
	"r"."Value" = ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @value DateTime
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
			MAX("g_1"."Value") = ?
	) "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @CoarseValue DateTime
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
			MAX("g_1"."Value") = ?
	) "t1"

-- SapHana.Odbc SapHanaOdbc
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
			MIN("g_1"."Day") = ?
	) "t1"

-- SapHana.Odbc SapHanaOdbc
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
			MIN("g_1"."Day") = ?
	) "t1"

