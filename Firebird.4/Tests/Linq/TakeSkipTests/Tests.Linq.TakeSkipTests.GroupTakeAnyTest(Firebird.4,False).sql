BeforeExecute
-- Firebird.4 Firebird4

SELECT
	EXISTS(
		SELECT
			"item_1"."Value"
		FROM
			"TakeSkipClass" "item_1"
		GROUP BY
			"item_1"."Value"
		HAVING
			COUNT(*) > 1
		FETCH NEXT 1 ROWS ONLY
	)
FROM rdb$database

