-- Firebird.2.5 Firebird
DECLARE @param Integer -- Int32
SET     @param = 33
DECLARE @param_1 Integer -- Int32
SET     @param_1 = 33
DECLARE @param_2 Integer -- Int32
SET     @param_2 = 33

SELECT FIRST 2
	"v"."Integer" / CAST(@param AS Int),
	"v"."Decimal" / CAST(@param_1 AS Int),
	"v"."Double" / CAST(@param_2 AS Int)
FROM
	"Issue4469Table" "v"

