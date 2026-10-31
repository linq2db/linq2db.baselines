-- SapHana.Native SapHana
DECLARE @param Double
SET     @param = 33
DECLARE @param_1 Double
SET     @param_1 = 33
DECLARE @param_2 Double
SET     @param_2 = 33

SELECT
	CAST("v"."Integer" AS Double) / :"param",
	CAST("v"."Decimal" AS Double) / :"param_1",
	"v"."Double" / :"param_2"
FROM
	"Issue4469Table" "v"
LIMIT 2

