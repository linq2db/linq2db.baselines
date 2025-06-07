BeforeExecute
-- Firebird.3 Firebird3
DECLARE @param Double
SET     @param = 33
DECLARE @param_1 Decimal
SET     @param_1 = 33

SELECT
	CAST("v"."Integer" AS Float) / CAST(@param AS Float),
	CAST("v"."Decimal" AS Float) / CAST(@param_1 AS Decimal(10, 5)),
	"v"."Double" / CAST(@param AS Float)
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

