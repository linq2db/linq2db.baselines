-- Firebird.5 Firebird4

SELECT
	"o"."ParentID",
	"o"."Value1",
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "o"
		INNER JOIN (
			SELECT
				"x"."ParentID",
				"x"."ChildID"
			FROM
				"Child" "x"
			FETCH NEXT 1 ROWS ONLY
		) "c_1" ON "c_1"."ParentID" = "o"."ParentID"

