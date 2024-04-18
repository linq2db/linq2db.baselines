BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"Parent" "p"
		LEFT JOIN "Child" "o" ON "p"."ParentID" = "o"."ParentID"

