BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"c_1"."ChildID",
	"c_1"."ParentID"
FROM
	"Child" "c_1"
UNION ALL
SELECT
	"c_2"."Value1",
	"c_2"."ParentID"
FROM
	"Parent" "c_2"

