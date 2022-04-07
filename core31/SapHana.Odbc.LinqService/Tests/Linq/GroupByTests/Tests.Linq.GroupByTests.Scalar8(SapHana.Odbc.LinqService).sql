BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Max("id"."ChildID")
FROM
	"Child" "id"
GROUP BY
	"id"."ParentID"

