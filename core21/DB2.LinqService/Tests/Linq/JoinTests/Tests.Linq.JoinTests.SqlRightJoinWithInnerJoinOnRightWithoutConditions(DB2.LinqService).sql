BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id1 Integer(4) -- Int32
SET     @id1 = 1

SELECT 
	"left_1"."ParentID", 
	"left_1"."Value1", 
	"t1"."ParentID", 
	"t1"."Value1"
FROM
	"Parent" "left_1"
		INNER JOIN "Parent" "left2" ON "left_1"."Value1" = "left2"."Value1" + 2
		RIGHT JOIN ( 
			SELECT 
				"p"."Value1", 
				"p"."ParentID"
			FROM
				"Parent" "p"
			WHERE
				"p"."ParentID" <> @id1
		) "t1" ON ("t1"."Value1" + 2 IS NOT NULL AND "t1"."Value1" + 2 = "left_1"."Value1")
ORDER BY
	"left_1"."ParentID"

