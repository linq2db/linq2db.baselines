BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"g_2".ID,
	"g_2".COUNT_1,
	"g_2".SUM_1,
	CASE
		WHEN "g_2".SUM_1 IS NOT NULL THEN CASE
			WHEN "g_2".SUM_1 IS NOT NULL THEN 1
			ELSE 0
		END
		ELSE 0
	END,
	"g_2".MAX_1
FROM
	(
		SELECT
			"g_1".ID,
			COUNT(*) as COUNT_1,
			SUM(((Days("g_1"."DateTimeValue" + 1 DAY) - Days("g_1"."DateTimeValue")) * 86400 + MIDNIGHT_SECONDS("g_1"."DateTimeValue" + 1 DAY) - MIDNIGHT_SECONDS("g_1"."DateTimeValue")) * 1000 + (MICROSECOND("g_1"."DateTimeValue" + 1 DAY) - MICROSECOND("g_1"."DateTimeValue")) / 1000) as SUM_1,
			MAX(((Days("g_1"."DateTimeValue" + 1 DAY) - Days("g_1"."DateTimeValue")) * 86400 + MIDNIGHT_SECONDS("g_1"."DateTimeValue" + 1 DAY) - MIDNIGHT_SECONDS("g_1"."DateTimeValue")) * 1000 + (MICROSECOND("g_1"."DateTimeValue" + 1 DAY) - MICROSECOND("g_1"."DateTimeValue")) / 1000) as MAX_1
		FROM
			"LinqDataTypes" "g_1"
		GROUP BY
			"g_1".ID
	) "g_2"

