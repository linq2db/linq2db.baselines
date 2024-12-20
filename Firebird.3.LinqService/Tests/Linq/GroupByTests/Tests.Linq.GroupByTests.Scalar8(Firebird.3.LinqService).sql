BeforeExecute
-- Firebird.3 Firebird3

SELECT
	MAX("id"."ChildID")
FROM
	"Child" "id"
GROUP BY
	"id"."ParentID"

