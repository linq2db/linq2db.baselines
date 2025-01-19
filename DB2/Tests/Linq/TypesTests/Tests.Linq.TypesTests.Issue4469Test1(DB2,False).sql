BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @param Integer(4) -- Int32
SET     @param = 33

SELECT
	"v"."Integer" / CAST(@param AS Int),
	"v"."Decimal" / CAST(@param AS Int),
	"v"."Double" / CAST(@param AS Int)
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

