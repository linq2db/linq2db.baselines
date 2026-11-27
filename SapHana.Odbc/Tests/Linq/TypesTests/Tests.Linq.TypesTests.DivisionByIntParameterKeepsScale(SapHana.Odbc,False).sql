-- SapHana.Odbc SapHanaOdbc
DECLARE @param Int -- Int32
SET     @param = 33
DECLARE @param Int -- Int32
SET     @param = 33
DECLARE @param Int -- Int32
SET     @param = 33

SELECT
	"v"."Integer" / ?,
	"v"."Decimal" / ?,
	"v"."Double" / ?
FROM
	"NumericDivisionTable" "v"
LIMIT 2

