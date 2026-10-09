-- Firebird.2.5 Firebird
SELECT FIRST 2
	"r"."Value"
FROM
	"CoarseConvertedRow" "r"

-- Firebird.2.5 Firebird
DECLARE @value TimeStamp -- DateTime
SET     @value = TIMESTAMP '2026-06-01 09:00:00.0000'

SELECT
	COUNT(*)
FROM
	"CoarseConvertedRow" "r"
WHERE
	"r"."Value" = @value

-- Firebird.2.5 Firebird
DECLARE @value TimeStamp -- DateTime
SET     @value = TIMESTAMP '2026-06-01 09:00:00.0000'

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
			MAX("g_1"."Value") = @value
	) "t1"

-- Firebird.2.5 Firebird
DECLARE @CoarseValue TimeStamp -- DateTime
SET     @CoarseValue = TIMESTAMP '2026-06-01 09:00:00.0000'

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
			MAX("g_1"."Value") = @CoarseValue
	) "t1"

-- Firebird.2.5 Firebird
DECLARE @day Date
SET     @day = TIMESTAMP '2026-05-31 00:00:00.0000'

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
			MIN("g_1"."Day") = @day
	) "t1"

-- Firebird.2.5 Firebird
DECLARE @CoarseConvertedDay Date
SET     @CoarseConvertedDay = TIMESTAMP '2026-05-31 00:00:00.0000'

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
			MIN("g_1"."Day") = @CoarseConvertedDay
	) "t1"

