BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"pmp"."ParentID"
FROM
	"Child" "pmp"
GROUP BY
	"pmp"."ParentID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

