-- DB2 DB2.LUW DB2LUW
SELECT
	Decimal(Power(CAST("r".D AS Float), CAST(0.00005 AS Float)), 18, 4) + "r".D
FROM
	"PowScale" "r"
FETCH NEXT 2 ROWS ONLY

