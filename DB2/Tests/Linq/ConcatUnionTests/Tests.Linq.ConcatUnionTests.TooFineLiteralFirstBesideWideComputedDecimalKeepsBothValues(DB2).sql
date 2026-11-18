-- DB2 DB2.LUW DB2LUW
SELECT
	Decimal(1.00000000000000005, 18, 17)
FROM
	"WideDecimalRow" "r"
UNION ALL
SELECT
	Abs("r_1"."Value")
FROM
	"WideDecimalRow" "r_1"

