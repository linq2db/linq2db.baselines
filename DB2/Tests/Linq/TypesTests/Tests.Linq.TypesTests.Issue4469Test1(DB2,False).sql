BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @param Integer(4) -- Int32
SET     @param = 33

SELECT
	"v"."Integer" / @param,
	"v"."Decimal" / @param,
	"v"."Double" / @param
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

