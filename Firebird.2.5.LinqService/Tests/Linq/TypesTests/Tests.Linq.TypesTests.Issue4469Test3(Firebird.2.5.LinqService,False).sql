BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @param Integer -- Int32
SET     @param = 33
DECLARE @param_1 Decimal
SET     @param_1 = 33
DECLARE @param_2 Double
SET     @param_2 = 33

SELECT FIRST 2
	CAST("v"."Integer" AS Float) / CAST(@param AS Int),
	CAST("v"."Decimal" AS Float) / CAST(@param_1 AS Decimal(10, 5)),
	"v"."Double" / CAST(@param_2 AS Float)
FROM
	"Issue4469Table" "v"

