-- SapHana.Odbc SapHanaOdbc
DECLARE @Value1 Int -- Int32
SET     @Value1 = 100

SELECT
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	Coalesce("x"."Value1", ?) > 10

-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."Value1"
FROM
	"Parent" "p"

