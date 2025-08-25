BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	SUM(Coalesce("a_Parent"."Value1", 0))
FROM
	"Child" "grp"
		LEFT JOIN "Parent" "a_Parent" ON "grp"."ParentID" = "a_Parent"."ParentID"
GROUP BY
	"grp"."ParentID"

