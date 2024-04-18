BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Max("ch"."ParentID")
FROM
	"Child" "ch"
GROUP BY
	"ch"."ParentID"

