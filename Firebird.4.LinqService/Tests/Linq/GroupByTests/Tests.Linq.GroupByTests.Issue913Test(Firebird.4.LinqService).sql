BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"g_2"."cond",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN "g_1"."TradingStatus" = 'D' THEN TRUE
				ELSE FALSE
			END as "cond"
		FROM
			"Issue913Test" "g_1"
	) "g_2"
GROUP BY
	"g_2"."cond"

