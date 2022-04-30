BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT DISTINCT
	Coalesce("p"."Value1", MOD("p"."ParentID", 2))
FROM
	"Parent" "p"

