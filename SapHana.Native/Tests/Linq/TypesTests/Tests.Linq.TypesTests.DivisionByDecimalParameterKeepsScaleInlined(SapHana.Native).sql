-- SapHana.Native SapHana
SELECT
	CAST("v"."Integer" AS Decimal(38, 10)) / 33,
	"v"."Decimal" / 33,
	"v"."Double" / 33
FROM
	"NumericDivisionTable" "v"
LIMIT 2

