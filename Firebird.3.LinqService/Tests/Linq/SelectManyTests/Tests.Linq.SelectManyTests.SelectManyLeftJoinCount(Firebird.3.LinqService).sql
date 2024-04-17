BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Count(*)
FROM
	"Parent" "p"
		LEFT JOIN "Child" "o" ON "p"."ParentID" = "o"."ParentID"

