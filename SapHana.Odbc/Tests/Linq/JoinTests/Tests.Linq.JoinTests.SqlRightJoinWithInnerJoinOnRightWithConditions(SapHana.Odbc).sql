BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id2  -- Int32
SET     @id2 = 2
DECLARE @id1  -- Int32
SET     @id1 = 1
DECLARE @id1  -- Int32
SET     @id1 = 1

SELECT
	"t1"."ParentID",
	"right_2"."ParentID"
FROM
	(
		SELECT
			"left_1"."ParentID",
			"left_1"."Value1"
		FROM
			"Parent" "left_1"
				INNER JOIN "Parent" "left2" ON "left_1"."Value1" = "left2"."Value1" + 2
		WHERE
			"left_1"."ParentID" <> ? AND "left2"."ParentID" <> ?
	) "t1"
		RIGHT JOIN (
			SELECT
				"right_1"."ParentID",
				"right_1"."Value1" + 2 as "c1"
			FROM
				"Parent" "right_1"
			WHERE
				"right_1"."ParentID" <> ?
		) "right_2" ON "right_2"."c1" = "t1"."Value1" OR "right_2"."c1" IS NULL AND "t1"."Value1" IS NULL
ORDER BY
	"t1"."ParentID"

