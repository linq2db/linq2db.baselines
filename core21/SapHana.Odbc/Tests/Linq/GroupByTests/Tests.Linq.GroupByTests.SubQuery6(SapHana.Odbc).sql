BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"ch"."ParentID" + 1
FROM
	"Child" "ch"
GROUP BY
	"ch"."ParentID" + 1

