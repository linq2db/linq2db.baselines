BeforeExecute
--  Firebird.2.5 Firebird
DECLARE @param Integer -- Int32
SET     @param = 33
DECLARE @param_1 Decimal(2, 0)
SET     @param_1 = 33
DECLARE @param_2 Decimal(2, 0)
SET     @param_2 = 33

SELECT FIRST 2
	CAST("v"."Integer" AS Decimal(18, 10)) / CAST(@param AS Int),
	"v"."Decimal" / CAST(@param_1 AS Decimal(10, 5)),
	"v"."Double" / CAST(@param_2 AS Decimal(18, 10))
FROM
	"Issue4469Table" "v"

