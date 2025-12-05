-- SapHana.Odbc SapHanaOdbc

SELECT
	"pmp"."ParentID"
FROM
	"Child" "pmp"
GROUP BY
	"pmp"."ParentID"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

