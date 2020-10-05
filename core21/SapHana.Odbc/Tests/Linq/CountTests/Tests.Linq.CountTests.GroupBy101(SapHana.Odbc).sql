BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	"Child" "t1"
GROUP BY
	"t1"."ParentID"

