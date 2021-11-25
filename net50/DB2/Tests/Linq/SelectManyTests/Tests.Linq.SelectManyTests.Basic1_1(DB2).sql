BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID",
	"c_1"."GrandChildID"
FROM
	"Parent" "cp",
	"Child" "cp_1",
	"GrandChild" "c_1"

