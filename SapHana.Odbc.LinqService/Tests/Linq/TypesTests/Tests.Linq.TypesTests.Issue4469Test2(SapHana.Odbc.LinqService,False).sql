BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @param Int(2, 0) -- Int32
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

