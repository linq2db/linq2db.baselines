BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Max("ch"."ChildID")
FROM
	"Child" "ch"
GROUP BY
	"ch"."ChildID"

