﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 1

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
			LIMIT ?
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

