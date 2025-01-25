BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id1  -- Int32
SET     @id1 = 1
DECLARE @id2  -- Int32
SET     @id2 = 2

SELECT
	"t2"."ParentID",
	"t1"."ParentID"
FROM
	(
		SELECT
			"left_1"."ParentID"
		FROM
			"Parent" "left_1"
		WHERE
			"left_1"."ParentID" <> ?
	) "t2"
		FULL JOIN (
			SELECT
				"right_1"."ParentID"
			FROM
				"Parent" "right_1"
			WHERE
				"right_1"."ParentID" <> ?
		) "t1" ON "t1"."ParentID" = "t2"."ParentID"
ORDER BY
	"t2"."ParentID"

