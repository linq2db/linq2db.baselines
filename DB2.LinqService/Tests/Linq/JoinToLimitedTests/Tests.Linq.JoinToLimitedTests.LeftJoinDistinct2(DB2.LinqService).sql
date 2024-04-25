BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"o"."ParentID",
	"o"."Value1",
	"c_2"."ParentID",
	"c_2"."ChildID"
FROM
	"Parent" "o"
		LEFT JOIN (
			SELECT DISTINCT
				"c_1"."ParentID",
				"c_1"."ChildID"
			FROM
				"Child" "c_1"
		) "c_2" ON "o"."ParentID" = "c_2"."ParentID"

