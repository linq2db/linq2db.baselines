BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	MAX("id"."ChildID")
FROM
	"Child" "id"
GROUP BY
	"id"."ParentID"

