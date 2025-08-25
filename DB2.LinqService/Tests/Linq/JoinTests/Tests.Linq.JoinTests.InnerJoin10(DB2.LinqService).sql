BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"p"."ParentID",
	"q1"."GrandChildID"
FROM
	"Parent" "p"
		INNER JOIN "GrandChild" "q1" ON "p"."ParentID" = "q1"."ParentID"

