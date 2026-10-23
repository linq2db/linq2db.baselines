-- DB2 DB2.LUW DB2LUW
SELECT
	Abs("r"."Value")
FROM
	"FineDecimalRow" "r"
UNION ALL
SELECT
	Decimal(1.000000000005, 18, 12)
FROM
	"FineDecimalRow" "r_1"

