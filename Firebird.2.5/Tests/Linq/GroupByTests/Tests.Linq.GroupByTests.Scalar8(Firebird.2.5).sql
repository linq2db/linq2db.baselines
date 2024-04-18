BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Max("id"."ChildID")
FROM
	"Child" "id"
GROUP BY
	"id"."ParentID"

