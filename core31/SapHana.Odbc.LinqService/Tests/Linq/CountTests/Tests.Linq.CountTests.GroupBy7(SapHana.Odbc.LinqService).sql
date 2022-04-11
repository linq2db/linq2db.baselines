BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*),
	Max("t1"."ChildID")
FROM
	"Child" "t1"
GROUP BY
	"t1"."ParentID"

