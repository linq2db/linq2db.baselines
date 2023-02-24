BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"o"."ParentID",
	"o"."Value1",
	"x"."ParentID",
	"x"."ChildID"
FROM
	"Parent" "o"
		LEFT JOIN (
			SELECT
				"t1"."ParentID",
				"t1"."ChildID"
			FROM
				"Child" "t1"
			FETCH FIRST 1 ROWS ONLY
		) "x" ON "x"."ParentID" = "o"."ParentID"

