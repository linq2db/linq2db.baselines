BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	MAX("id"."ChildID")
FROM
	"Child" "id"
GROUP BY
	"id"."ParentID"

