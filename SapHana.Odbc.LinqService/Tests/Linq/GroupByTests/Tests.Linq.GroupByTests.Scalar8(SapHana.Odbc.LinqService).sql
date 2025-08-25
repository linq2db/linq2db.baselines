BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	MAX("id"."ChildID")
FROM
	"Child" "id"
GROUP BY
	"id"."ParentID"

