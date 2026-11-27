-- Firebird.3 Firebird3
SELECT
	CAST("v"."Integer" AS DOUBLE PRECISION) / 33,
	CAST("v"."Decimal" AS DOUBLE PRECISION) / 33,
	"v"."Double" / 33
FROM
	"NumericDivisionTable" "v"
FETCH NEXT 2 ROWS ONLY

