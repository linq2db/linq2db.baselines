BeforeExecute
-- Firebird3 Firebird

SELECT
	Max("ch"."ParentID")
FROM
	"Child" "ch"
GROUP BY
	"ch"."ParentID"

