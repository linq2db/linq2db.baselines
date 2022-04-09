BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Max("t1"."ChildID")
FROM
	"Child" "t1"
GROUP BY
	"t1"."ParentID"

