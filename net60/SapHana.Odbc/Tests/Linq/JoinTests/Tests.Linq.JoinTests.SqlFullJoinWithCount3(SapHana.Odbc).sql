﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	COUNT("left_1"."ParentID"),
	COUNT("t1"."ParentID"),
	COUNT(*)
FROM
	"Parent" "left_1"
		FULL JOIN (
			SELECT
				"p"."ParentID"
			FROM
				"Parent" "p"
			WHERE
				"p"."ParentID" <> ?
		) "t1" ON "t1"."ParentID" = "left_1"."ParentID"
LIMIT 2

