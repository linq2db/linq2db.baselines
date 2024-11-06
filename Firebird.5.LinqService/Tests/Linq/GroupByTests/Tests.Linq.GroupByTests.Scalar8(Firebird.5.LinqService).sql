BeforeExecute
-- Firebird.5 Firebird4

SELECT
	MAX("id"."ChildID")
FROM
	"Child" "id"
GROUP BY
	"id"."ParentID"

