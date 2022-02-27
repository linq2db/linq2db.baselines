BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"o"."ParentID",
	"o"."Value1",
	"cg"."c_1",
	"cg"."ChildID"
FROM
	"Parent" "o"
		LEFT JOIN (
			SELECT
				"t1"."ParentID" as "c_1",
				"t1"."ChildID"
			FROM
				"Child" "t1"
			FETCH FIRST 1 ROWS ONLY
		) "cg" ON "o"."ParentID" = "cg"."c_1"

