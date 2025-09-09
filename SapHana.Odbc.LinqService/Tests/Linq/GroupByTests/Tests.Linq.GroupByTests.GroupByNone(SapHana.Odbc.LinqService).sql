BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	MIN("gr"."ParentID"),
	MAX("gr"."ParentID")
FROM
	"Parent" "gr"

