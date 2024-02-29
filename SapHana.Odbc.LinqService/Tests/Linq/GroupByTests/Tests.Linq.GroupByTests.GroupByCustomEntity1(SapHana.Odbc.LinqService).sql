BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	"Child" "c_1"
GROUP BY
	"c_1"."ParentID"

