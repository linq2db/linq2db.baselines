﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" <= ?
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

