BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Max("ch"."ChildID")
FROM
	"Child" "ch"
GROUP BY
	"ch"."ChildID"

