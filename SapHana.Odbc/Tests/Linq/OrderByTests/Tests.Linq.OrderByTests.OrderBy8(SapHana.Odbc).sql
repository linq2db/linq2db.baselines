BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."ParentID",
	"x"."ChildID"
FROM
	"Child" "x"
ORDER BY
	"x"."ChildID",
	MOD("x"."ChildID", 2)

