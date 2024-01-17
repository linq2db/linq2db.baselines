BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	"Parent" "t1"
GROUP BY
	"t1"."ParentID"

