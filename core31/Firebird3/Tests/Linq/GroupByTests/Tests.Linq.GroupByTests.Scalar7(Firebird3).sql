BeforeExecute
-- Firebird3 Firebird

SELECT
	Max("id"."ChildID")
FROM
	"Child" "id"
GROUP BY
	"id"."ParentID"

