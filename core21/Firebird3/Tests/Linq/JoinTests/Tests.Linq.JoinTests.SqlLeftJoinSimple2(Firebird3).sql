BeforeExecute
-- Firebird3 Firebird

SELECT 
	"p"."ParentID", 
	"r"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN "Child" "r" ON "p"."ParentID" = "r"."ParentID"

