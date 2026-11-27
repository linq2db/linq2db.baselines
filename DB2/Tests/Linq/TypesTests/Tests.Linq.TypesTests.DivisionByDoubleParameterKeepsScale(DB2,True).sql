-- DB2 DB2.LUW DB2LUW
SELECT
	CAST("v"."Integer" AS Float) / 33,
	CAST("v"."Decimal" AS Float) / 33,
	"v"."Double" / 33
FROM
	"NumericDivisionTable" "v"
FETCH NEXT 2 ROWS ONLY

