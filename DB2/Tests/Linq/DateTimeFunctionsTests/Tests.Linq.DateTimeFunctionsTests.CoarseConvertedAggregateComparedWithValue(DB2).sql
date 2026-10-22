-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Value"
FROM
	"CoarseConvertedRow" "r"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @value Timestamp(20) -- DateTime
SET     @value = CAST('2026-06-01-09.00.00.000000' AS TIMESTAMP(6))

SELECT
	COUNT(*)
FROM
	"CoarseConvertedRow" "r"
WHERE
	"r"."Value" = @value

-- DB2 DB2.LUW DB2LUW
DECLARE @value Timestamp(20) -- DateTime
SET     @value = CAST('2026-06-01-09.00.00.000000' AS TIMESTAMP(6))

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

-- DB2 DB2.LUW DB2LUW
DECLARE @CoarseValue Timestamp(20) -- DateTime
SET     @CoarseValue = CAST('2026-06-01-09.00.00.000000' AS TIMESTAMP(6))

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

-- DB2 DB2.LUW DB2LUW
DECLARE @day Date(20)
SET     @day = CAST('2026-05-31-00.00.00.000000' AS TIMESTAMP(6))

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

-- DB2 DB2.LUW DB2LUW
DECLARE @CoarseConvertedDay Date(20)
SET     @CoarseConvertedDay = CAST('2026-05-31-00.00.00.000000' AS TIMESTAMP(6))

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

-- DB2 DB2.LUW DB2LUW
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
	"t1"."Max_1" IN (CAST('2026-06-01-09.00.00.000000' AS TIMESTAMP(6)))

