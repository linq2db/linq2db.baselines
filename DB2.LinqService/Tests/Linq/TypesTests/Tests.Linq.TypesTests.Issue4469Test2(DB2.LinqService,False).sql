BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @param (2, 0) -- Decimal
SET     @param = 33
DECLARE @param_1 (2, 0) -- Decimal
SET     @param_1 = 33
DECLARE @param_2 (2, 0) -- Decimal
SET     @param_2 = 33

SELECT
	Decimal("v"."Integer", 18, 10) / CAST(@param AS Decimal(2, 0)),
	"v"."Decimal" / CAST(@param_1 AS Decimal(10, 5)),
	"v"."Double" / CAST(@param_2 AS Decimal(18, 10))
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

