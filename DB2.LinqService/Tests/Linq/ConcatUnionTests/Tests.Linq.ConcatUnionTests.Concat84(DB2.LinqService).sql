BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID",
	"c_1"."ParentID" + 1
FROM
	"Child" "c_1"
UNION ALL
SELECT
	"c_2"."ParentID",
	"c_2"."ParentID",
	Coalesce("c_2"."Value1", 0)
FROM
	"Parent" "c_2"

