BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Max("id"."ChildID")
FROM
	"Child" "id"
GROUP BY
	"id"."ParentID"

