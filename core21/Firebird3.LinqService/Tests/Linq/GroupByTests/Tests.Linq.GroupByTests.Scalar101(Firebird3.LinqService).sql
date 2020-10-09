BeforeExecute
-- Firebird3 Firebird

SELECT 
	Max("ch"."ChildID")
FROM
	"Child" "ch"
GROUP BY
	"ch"."ChildID"

