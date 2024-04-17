BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p"."ParentID",
	"q"."GrandChildID"
FROM
	"Parent" "p"
		INNER JOIN "GrandChild" "q" ON "p"."ParentID" = "q"."ParentID"

