-- DB2 DB2.LUW DB2LUW
SELECT
	Decimal("v"."Integer", 18, 10) / 33,
	"v"."Decimal" / 33,
	"v"."Double" / 33
FROM
	"NumericDivisionTable" "v"
FETCH NEXT 2 ROWS ONLY

