BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p"."ParentID",
	"r"."ChildID"
FROM
	"Parent" "p"
		RIGHT JOIN "Child" "r" ON "p"."ParentID" = "r"."ParentID"

