BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	COUNT(*)
FROM
	"Parent" "gr"
GROUP BY
	"gr"."ParentID"

