BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Max("ch"."ChildID")
FROM
	"Child" "ch"
GROUP BY
	"ch"."ChildID"

