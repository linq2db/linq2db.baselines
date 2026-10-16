-- DB2 DB2.LUW DB2LUW
SELECT
	Decimal("r".A + "r".B, 18, 10)
FROM
	"DecimalTable" "r"
FETCH NEXT 2 ROWS ONLY

