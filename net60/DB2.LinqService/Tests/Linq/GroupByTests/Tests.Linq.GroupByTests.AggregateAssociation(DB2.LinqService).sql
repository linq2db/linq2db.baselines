BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Sum(Coalesce("a_Parent"."Value1", 0))
FROM
	"Child" "t1"
		LEFT JOIN "Parent" "a_Parent" ON "t1"."ParentID" = "a_Parent"."ParentID"
GROUP BY
	"t1"."ParentID"

