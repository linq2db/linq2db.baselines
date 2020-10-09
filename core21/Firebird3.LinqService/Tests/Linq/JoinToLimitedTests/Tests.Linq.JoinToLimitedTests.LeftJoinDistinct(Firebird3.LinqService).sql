BeforeExecute
-- Firebird3 Firebird

SELECT 
	"o"."ParentID", 
	"o"."Value1", 
	"cg"."ParentID", 
	"cg"."ChildID"
FROM
	"Parent" "o"
		LEFT JOIN ( 
			SELECT DISTINCT
				"t1"."ParentID", 
				"t1"."ChildID"
			FROM
				"Child" "t1"
		) "cg" ON "o"."ParentID" = "cg"."ParentID"

