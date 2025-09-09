BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"x"."ParentID",
	"x"."ChildID"
FROM
	"Child" "x"
ORDER BY
	Mod("x"."ChildID", 2),
	"x"."ChildID" DESC

