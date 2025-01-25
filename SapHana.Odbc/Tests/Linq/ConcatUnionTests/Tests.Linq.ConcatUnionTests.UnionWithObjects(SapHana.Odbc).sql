BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."ParentID",
	"p"."Value1",
	"p2"."ParentID",
	"p2"."Value1",
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "p"
		CROSS JOIN "Parent" "p2"
		INNER JOIN "Child" "c_1" ON "p"."ParentID" = "c_1"."ParentID"
UNION
SELECT
	"p_1"."ParentID",
	"p_1"."Value1",
	"p2_1"."ParentID",
	"p2_1"."Value1",
	"c_2"."ParentID",
	"c_2"."ChildID"
FROM
	"Parent" "p_1"
		CROSS JOIN "Parent" "p2_1"
		INNER JOIN "Child" "c_2" ON "p2_1"."ParentID" = "c_2"."ParentID"

