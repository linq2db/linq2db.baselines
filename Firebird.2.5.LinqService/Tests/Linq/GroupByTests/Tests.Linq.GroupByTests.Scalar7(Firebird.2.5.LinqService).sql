BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	MAX("id"."ChildID")
FROM
	"Child" "id"
GROUP BY
	"id"."ParentID"

