BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."ParentID",
	"r"."ChildID"
FROM
	"Parent" "p"
		INNER JOIN "Child" "r" ON "p"."ParentID" = "r"."ParentID"

