BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

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
		FETCH NEXT @take ROWS ONLY
	)
FROM rdb$database

