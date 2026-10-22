-- DB2 DB2.LUW DB2LUW
SELECT
	Abs("r"."Value")
FROM
	"WideDecimalRow" "r"
UNION ALL
SELECT
	Decimal(1.0000000000005, 29, 13)
FROM
	"WideDecimalRow" "r_1"

-- DB2 DB2.LUW DB2LUW
SELECT
	Decimal(1.0000000000005, 29, 13)
FROM
	"WideDecimalRow" "r"
UNION ALL
SELECT
	Abs("r_1"."Value")
FROM
	"WideDecimalRow" "r_1"

