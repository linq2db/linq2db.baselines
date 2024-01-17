BeforeExecute
-- Firebird3 Firebird

SELECT
	"p"."ParentID",
	"r"."ChildID"
FROM
	"Parent" "p"
		RIGHT JOIN "Child" "r" ON "p"."ParentID" = "r"."ParentID"

