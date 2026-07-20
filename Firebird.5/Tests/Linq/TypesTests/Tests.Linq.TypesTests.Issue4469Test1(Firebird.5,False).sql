-- Firebird.5 Firebird4
DECLARE @param Integer -- Int32
SET     @param = 33
DECLARE @param_1 Integer -- Int32
SET     @param_1 = 33
DECLARE @param_2 Integer -- Int32
SET     @param_2 = 33

SELECT
	"v"."Integer" / CAST(@param AS Int),
	"v"."Decimal" / CAST(@param_1 AS Int),
	"v"."Double" / CAST(@param_2 AS Int)
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

