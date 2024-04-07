BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT("left_1"."ParentID"),
	COUNT("p"."ParentID"),
	COUNT(*)
FROM
	"Parent" "left_1"
		FULL JOIN "Parent" "p" ON "p"."ParentID" = "left_1"."ParentID"
FETCH FIRST 2 ROWS ONLY

