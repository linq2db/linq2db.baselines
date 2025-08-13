BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."Value1",
	"p"."ParentID"
FROM
	"Parent" "p"
WHERE
	"p"."Value1" = 2 OR "p"."Value1" = 1

