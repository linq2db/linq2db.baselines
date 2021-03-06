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
	"t1"."ParentID",
	"t1"."Value1"
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
		FULL JOIN (
			SELECT
				"p_2"."Value1",
				"p_2"."ParentID"
			FROM
				"Parent" "p_2"
					INNER JOIN "Parent" "p_1" ON "p_2"."Value1" = "p_1"."Value1" + 2
			WHERE
				"p_1"."ParentID" <> ? AND "p_2"."ParentID" <> ?
		) "t1" ON ("t1"."Value1" + 2 IS NOT NULL AND "t1"."Value1" + 2 = "left_1"."Value1")
ORDER BY
	"left_1"."ParentID"

