BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id1 Integer(4) -- Int32
SET     @id1 = 1

SELECT
	"left_1"."ParentID",
	"right_1"."ParentID"
FROM
	(
		SELECT
			"p"."Value1",
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" <> @id1
	) "left_1"
		FULL JOIN "Parent" "right_1"
			INNER JOIN "Parent" "right2" ON "right_1"."Value1" = "right2"."Value1" + 2
		ON ("right_1"."Value1" + 2 = "left_1"."Value1" OR "right_1"."Value1" IS NULL AND "left_1"."Value1" IS NULL)
ORDER BY
	"left_1"."ParentID"

