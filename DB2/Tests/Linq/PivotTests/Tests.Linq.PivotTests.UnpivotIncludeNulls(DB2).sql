-- DB2 DB2.LUW DB2LUW
SELECT
	"row_1"."Id",
	VarChar('Q1', 255),
	"row_1".Q1
FROM
	"QuarterlySales" "row_1"
UNION ALL
SELECT
	"row_2"."Id",
	VarChar('Q2', 255),
	"row_2".Q2
FROM
	"QuarterlySales" "row_2"
UNION ALL
SELECT
	"row_3"."Id",
	VarChar('Q3', 255),
	"row_3".Q3
FROM
	"QuarterlySales" "row_3"
UNION ALL
SELECT
	"row_4"."Id",
	VarChar('Q4', 255),
	"row_4".Q4
FROM
	"QuarterlySales" "row_4"

