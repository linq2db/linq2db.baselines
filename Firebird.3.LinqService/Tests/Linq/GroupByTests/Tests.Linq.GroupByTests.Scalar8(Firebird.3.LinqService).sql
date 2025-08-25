BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	MAX("id"."ChildID")
FROM
	"Child" "id"
GROUP BY
	"id"."ParentID"

