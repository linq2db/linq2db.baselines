BeforeExecute
-- SapHana.Native SapHana

SELECT
	Max("ch"."ChildID")
FROM
	"Child" "ch"
GROUP BY
	"ch"."ChildID"

