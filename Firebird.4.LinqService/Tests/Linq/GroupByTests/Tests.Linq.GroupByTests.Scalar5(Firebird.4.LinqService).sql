BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Max("ch"."ParentID")
FROM
	"Child" "ch"
GROUP BY
	"ch"."ParentID"

