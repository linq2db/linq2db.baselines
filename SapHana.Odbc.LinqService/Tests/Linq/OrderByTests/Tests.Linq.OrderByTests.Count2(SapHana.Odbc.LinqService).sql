﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Parent" "t1"
		ORDER BY
			"t1"."ParentID"
		LIMIT ?
	) "t2"

