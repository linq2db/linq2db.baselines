-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "p"
		RIGHT JOIN "Child" "c_1" ON "p"."ParentID" = "c_1"."ParentID"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

