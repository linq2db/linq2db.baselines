BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"Parent" "p"
		LEFT JOIN "Child" "o" ON "p"."ParentID" = "o"."ParentID"

