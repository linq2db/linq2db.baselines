BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Max("ch"."ParentID")
FROM
	"Child" "ch"
GROUP BY
	"ch"."ParentID"

