BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	CASE
		WHEN EXISTS(
			SELECT FIRST 1
				"item_1"."Value"
			FROM
				"TakeSkipClass" "item_1"
			GROUP BY
				"item_1"."Value"
			HAVING
				COUNT(*) > 1
		)
			THEN '1'
		ELSE '0'
	END
FROM rdb$database

