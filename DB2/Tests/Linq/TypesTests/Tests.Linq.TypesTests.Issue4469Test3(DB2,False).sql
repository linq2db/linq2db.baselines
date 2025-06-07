BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @param Double(8)
SET     @param = 33
DECLARE @param_1 Decimal(8)
SET     @param_1 = 33

SELECT
	CAST("v"."Integer" AS Float) / @param,
	CAST("v"."Decimal" AS Float) / @param_1,
	"v"."Double" / @param
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

