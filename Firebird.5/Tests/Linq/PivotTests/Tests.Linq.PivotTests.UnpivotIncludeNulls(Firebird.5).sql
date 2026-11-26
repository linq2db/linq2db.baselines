-- Firebird.5 Firebird4
SELECT
	"row_1"."Id",
	CAST('Q1' AS VARCHAR(2)),
	"row_1".Q1
FROM
	"QuarterlySales" "row_1"
UNION ALL
SELECT
	"row_2"."Id",
	CAST('Q2' AS VARCHAR(2)),
	"row_2".Q2
FROM
	"QuarterlySales" "row_2"
UNION ALL
SELECT
	"row_3"."Id",
	CAST('Q3' AS VARCHAR(2)),
	"row_3".Q3
FROM
	"QuarterlySales" "row_3"
UNION ALL
SELECT
	"row_4"."Id",
	CAST('Q4' AS VARCHAR(2)),
	"row_4".Q4
FROM
	"QuarterlySales" "row_4"

