BeforeExecute
-- SapHana.Native SapHana

SELECT
	Max("id"."ChildID")
FROM
	"Child" "id"
GROUP BY
	"id"."ParentID"

