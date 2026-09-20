-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Name",
	t1."Value"
FROM
	"QuarterlySales" UNPIVOT ("Value" FOR "Name" IN (Q1, Q2, Q3, Q4)) t1
ORDER BY
	t1."Id",
	t1."Name"

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	row_1."Id",
	CAST('Q1' AS VarChar(255)),
	row_1.Q1
FROM
	"QuarterlySales" row_1
UNION ALL
SELECT
	row_2."Id",
	CAST('Q2' AS VarChar(255)),
	row_2.Q2
FROM
	"QuarterlySales" row_2
UNION ALL
SELECT
	row_3."Id",
	CAST('Q3' AS VarChar(255)),
	row_3.Q3
FROM
	"QuarterlySales" row_3
UNION ALL
SELECT
	row_4."Id",
	CAST('Q4' AS VarChar(255)),
	row_4.Q4
FROM
	"QuarterlySales" row_4

