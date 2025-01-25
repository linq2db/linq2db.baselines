BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(CASE
		WHEN "g_1"."TimeStamp" > CAST('2020-02-29 17:54:55.123' AS timestamp)
			THEN 1
		ELSE NULL
	END)
FROM
	"Issue680Table" "g_1"
GROUP BY
	"g_1"."TimeStamp"

