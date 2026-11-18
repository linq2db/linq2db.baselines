-- SapHana.Native SapHana
SELECT
	MAX("id"."ChildID")
FROM
	"Child" "id"
GROUP BY
	"id"."ParentID"

