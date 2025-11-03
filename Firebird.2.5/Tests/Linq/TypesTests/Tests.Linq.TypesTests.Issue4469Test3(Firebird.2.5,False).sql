-- Firebird.2.5 Firebird
DECLARE @param Double
SET     @param = 33

SELECT FIRST 2
	CAST("v"."Integer" AS DOUBLE PRECISION) / CAST(@param AS DOUBLE PRECISION),
	CAST("v"."Decimal" AS DOUBLE PRECISION) / CAST(@param AS DOUBLE PRECISION),
	"v"."Double" / CAST(@param AS DOUBLE PRECISION)
FROM
	"Issue4469Table" "v"

