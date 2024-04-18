BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."ParentID",
	"r"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN "Child" "r" ON "p"."ParentID" = "r"."ParentID"

