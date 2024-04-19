﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT
	"t1"."c1"
FROM
	(
		SELECT
			CASE
				WHEN COUNT("left_1"."ParentID") = COUNT("right_2"."ParentID") AND COUNT("left_1"."ParentID") = COUNT(*)
					THEN 1
				ELSE 0
			END as "c1"
		FROM
			(
				SELECT
					"p"."ParentID"
				FROM
					"Parent" "p"
				WHERE
					"p"."ParentID" <> @id
			) "left_1"
				FULL JOIN (
					SELECT
						"right_1"."ParentID"
					FROM
						"Parent" "right_1"
					WHERE
						"right_1"."ParentID" <> @id
				) "right_2" ON "right_2"."ParentID" = "left_1"."ParentID"
	) "t1"
FETCH FIRST 2 ROWS ONLY

