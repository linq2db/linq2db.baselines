BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"gr"."ParentID",
	"gr"."ChildID"
FROM
	"GrandChild" "gr"
GROUP BY
	"gr"."ParentID",
	"gr"."ChildID"

