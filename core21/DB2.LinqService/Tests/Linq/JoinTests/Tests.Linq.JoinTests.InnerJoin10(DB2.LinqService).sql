BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"p"."ParentID", 
	"q"."GrandChildID"
FROM
	"Parent" "p"
		INNER JOIN "GrandChild" "q" ON "p"."ParentID" = "q"."ParentID"

