﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id1  -- Int32
SET     @id1 = 1
DECLARE @id1  -- Int32
SET     @id1 = 1
DECLARE @id2  -- Int32
SET     @id2 = 2

SELECT
	"left_1"."ParentID",
	"left_1"."Value1",
	"t1"."right_2",
	"t1"."right_1"
FROM
	(
		SELECT
			"p"."Value1",
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" <> ?
	) "left_1"
		RIGHT JOIN (
			SELECT
				"p_2"."Value1" as "right_1",
				"p_2"."ParentID" as "right_2"
			FROM
				"Parent" "p_2"
					INNER JOIN "Parent" "p_1" ON "p_2"."Value1" = "p_1"."Value1" + 2
			WHERE
				"p_1"."ParentID" <> ? AND "p_2"."ParentID" <> ?
		) "t1" ON "t1"."right_1" + 2 = "left_1"."Value1"
ORDER BY
	"left_1"."ParentID"

