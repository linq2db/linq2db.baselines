-- SapHana.Odbc SapHanaOdbc
SELECT
	"t"."ParentID",
	"t"."Value1",
	"c_1"."ChildID"
FROM
	"Parent" "t"
		INNER JOIN "Child" "c_1" ON "t"."ParentID" = "c_1"."ParentID"
WHERE
	"c_1"."ChildID" > 20

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

