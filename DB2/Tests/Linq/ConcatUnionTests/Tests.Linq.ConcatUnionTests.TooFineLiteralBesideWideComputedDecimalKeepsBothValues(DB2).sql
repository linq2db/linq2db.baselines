-- DB2 DB2.LUW DB2LUW
SELECT
	Abs("r"."Value")
FROM
	"WideDecimalRow" "r"
UNION ALL
SELECT
	Decimal(1.00000000000000005, 18, 17)
FROM
	"WideDecimalRow" "r_1"

