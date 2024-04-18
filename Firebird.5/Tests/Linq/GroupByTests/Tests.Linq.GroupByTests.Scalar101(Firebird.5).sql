BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Max("ch"."ChildID")
FROM
	"Child" "ch"
GROUP BY
	"ch"."ChildID"

