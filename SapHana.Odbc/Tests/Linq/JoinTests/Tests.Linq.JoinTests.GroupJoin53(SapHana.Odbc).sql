BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"ch"."ParentID"
FROM
	"Parent" "p"
		LEFT JOIN "Child" "ch" ON "ch"."ParentID" = "p"."ParentID"
WHERE
	"p"."ParentID" = 1

