BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @param Integer(8) -- Int32
SET     @param = 33
DECLARE @param_1 Decimal(8)
SET     @param_1 = 33
DECLARE @param_2 Double(8)
SET     @param_2 = 33

SELECT
	CAST("v"."Integer" AS Float) / CAST(@param AS Int),
	CAST("v"."Decimal" AS Float) / CAST(@param_1 AS Decimal(10, 5)),
	"v"."Double" / CAST(@param_2 AS Float)
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

