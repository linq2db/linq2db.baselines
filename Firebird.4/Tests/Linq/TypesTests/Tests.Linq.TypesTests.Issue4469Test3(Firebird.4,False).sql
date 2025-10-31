-- Firebird.4 Firebird4
DECLARE @param Double
SET     @param = 33

SELECT
	CAST("v"."Integer" AS Float) / CAST(@param AS Float),
	CAST("v"."Decimal" AS Float) / CAST(@param AS Float),
	"v"."Double" / CAST(@param AS Float)
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

