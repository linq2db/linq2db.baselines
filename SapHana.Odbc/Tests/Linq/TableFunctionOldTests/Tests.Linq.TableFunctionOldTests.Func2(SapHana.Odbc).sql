-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Child" "c_1"
		CROSS JOIN "GetParentByID"(2) "p"

