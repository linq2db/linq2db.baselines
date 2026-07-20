-- Firebird.5 Firebird4
DECLARE @param Double
SET     @param = 33
DECLARE @param_1 Double
SET     @param_1 = 33
DECLARE @param_2 Double
SET     @param_2 = 33

SELECT
	CAST("v"."Integer" AS DOUBLE PRECISION) / CAST(@param AS DOUBLE PRECISION),
	CAST("v"."Decimal" AS DOUBLE PRECISION) / CAST(@param_1 AS DOUBLE PRECISION),
	"v"."Double" / CAST(@param_2 AS DOUBLE PRECISION)
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

