BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"f"."ParentID",
	Lower(CAST("f"."Value1" AS NVarChar(11)))
FROM
	"Parent" "f"

