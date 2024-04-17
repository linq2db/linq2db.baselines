BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Max("ch"."ParentID")
FROM
	"Child" "ch"
GROUP BY
	"ch"."ParentID"

