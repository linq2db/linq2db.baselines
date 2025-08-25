BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
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
	"Issue4469Table" "v"
LIMIT 2

