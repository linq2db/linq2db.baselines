BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"g_2"."cond",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN "g_1"."TradingStatus" = 'D' THEN 1
				ELSE 0
			END as "cond"
		FROM
			"Issue913Test" "g_1"
	) "g_2"
GROUP BY
	"g_2"."cond"

