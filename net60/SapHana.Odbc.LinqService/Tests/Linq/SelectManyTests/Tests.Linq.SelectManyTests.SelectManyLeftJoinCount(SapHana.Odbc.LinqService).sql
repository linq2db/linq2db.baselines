BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	"Parent" "p"
		LEFT JOIN "Child" "o" ON "p"."ParentID" = "o"."ParentID"

