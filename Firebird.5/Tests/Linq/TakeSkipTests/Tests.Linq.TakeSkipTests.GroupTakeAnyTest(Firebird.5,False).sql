BeforeExecute
-- Firebird.5 Firebird4

SELECT
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					"group_1"."Value" as "Key_1"
				FROM
					"TakeSkipClass" "group_1"
				GROUP BY
					"group_1"."Value"
				HAVING
					COUNT(*) > 1
			) "item_1"
		FETCH NEXT 1 ROWS ONLY
	)
FROM rdb$database

