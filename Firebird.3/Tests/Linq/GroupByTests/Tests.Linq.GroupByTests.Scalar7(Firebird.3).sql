BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Max("id"."ChildID")
FROM
	"Child" "id"
GROUP BY
	"id"."ParentID"

