BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."ParentID",
	"x"."ChildID"
FROM
	"Child" "x"
ORDER BY
	MOD("x"."ChildID", 2),
	"x"."ChildID"

