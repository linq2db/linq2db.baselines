BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @param Decimal(2, 0)
SET     @param = 33
DECLARE @param_1 Decimal(2, 0)
SET     @param_1 = 33

SELECT
	CAST("v"."Integer" AS Decimal(18, 10)) / CAST(@param AS Decimal(2, 0)),
	"v"."Decimal" / CAST(@param_1 AS Decimal(2, 0)),
	"v"."Double" / CAST(@param AS Decimal(2, 0))
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

