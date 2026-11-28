-- DB2 DB2.LUW DB2LUW
SELECT
	"row_1"."Id",
	VarChar('ROOT_AMT', 255),
	"row_1".ROOT_AMT
FROM
	"NestedAmounts" "row_1"
WHERE
	"row_1".ROOT_AMT IS NOT NULL
UNION ALL
SELECT
	"row_2"."Id",
	VarChar('SHIP_AMT', 255),
	"row_2".SHIP_AMT
FROM
	"NestedAmounts" "row_2"
WHERE
	"row_2".SHIP_AMT IS NOT NULL
UNION ALL
SELECT
	"row_3"."Id",
	VarChar('BILL_AMT', 255),
	"row_3".BILL_AMT
FROM
	"NestedAmounts" "row_3"
WHERE
	"row_3".BILL_AMT IS NOT NULL

