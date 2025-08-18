BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @param Decimal(2, 0)
SET     @param = 33
DECLARE @param Decimal(2, 0)
SET     @param = 33
DECLARE @param Decimal(2, 0)
SET     @param = 33

SELECT
	CAST("v"."Integer" AS Decimal(38, 10)) / ?,
	"v"."Decimal" / ?,
	"v"."Double" / ?
FROM
	"Issue4469Table" "v"
LIMIT 2

