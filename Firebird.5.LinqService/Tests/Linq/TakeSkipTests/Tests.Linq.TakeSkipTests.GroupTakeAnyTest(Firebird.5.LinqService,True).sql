﻿BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

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
		FETCH NEXT @take ROWS ONLY
	)
FROM rdb$database

