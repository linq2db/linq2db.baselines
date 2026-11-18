-- SapHana.Odbc SapHanaOdbc
SELECT
	"p"."ParentID",
	ROW_NUMBER() OVER (),
	ROW_NUMBER() OVER (ORDER BY "p"."ParentID"),
	ROW_NUMBER() OVER (ORDER BY "p"."ParentID")
FROM
	"Parent" "p"

