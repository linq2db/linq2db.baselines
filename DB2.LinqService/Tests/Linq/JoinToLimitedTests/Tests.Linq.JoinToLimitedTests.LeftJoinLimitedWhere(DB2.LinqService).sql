BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"o"."ParentID",
	"o"."Value1",
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "o"
		LEFT JOIN (
			SELECT
				"x"."ParentID",
				"x"."ChildID"
			FROM
				"Child" "x"
			ORDER BY
				"x"."ChildID" DESC
			FETCH NEXT 1 ROWS ONLY
		) "c_1" ON "c_1"."ParentID" = "o"."ParentID"

