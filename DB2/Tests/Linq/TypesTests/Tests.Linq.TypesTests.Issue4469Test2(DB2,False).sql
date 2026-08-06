-- DB2 DB2.LUW DB2LUW
DECLARE @param (2, 0) -- Decimal
SET     @param = 33
DECLARE @param_1 (2, 0) -- Decimal
SET     @param_1 = 33

SELECT
	Decimal("v"."Integer", 18, 10) / @param,
	"v"."Decimal" / @param_1,
	"v"."Double" / @param
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

