BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @param Double(8)
SET     @param = 33

SELECT
	CAST("v"."Integer" AS Float) / @param,
	CAST("v"."Decimal" AS Float) / @param,
	"v"."Double" / @param
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

