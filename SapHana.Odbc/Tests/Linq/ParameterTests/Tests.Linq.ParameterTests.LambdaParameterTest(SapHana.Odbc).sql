-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	"r"."ParentID",
	"r"."Value1"
FROM
	"Parent" "r"
WHERE
	"r"."ParentID" = ?

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

