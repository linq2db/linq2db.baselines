BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				"item_1"."Value"
			FROM
				"TakeSkipClass" "item_1"
			GROUP BY
				"item_1"."Value"
			HAVING
				COUNT(*) > 1
			LIMIT 1
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

