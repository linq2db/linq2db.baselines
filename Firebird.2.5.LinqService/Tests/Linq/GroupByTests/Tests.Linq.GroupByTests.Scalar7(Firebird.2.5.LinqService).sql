BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	MAX("id"."ChildID")
FROM
	"Child" "id"
GROUP BY
	"id"."ParentID"

