BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @param Double(8)
SET     @param = 33
DECLARE @param_1 Double(8)
SET     @param_1 = 33

SELECT
	CAST("v"."Integer" AS Float) / CAST(@param AS Float),
	CAST("v"."Decimal" AS Float) / CAST(@param_1 AS Float),
	"v"."Double" / CAST(@param AS Float)
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

