BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Parent" "gr"
GROUP BY
	"gr"."ParentID"

