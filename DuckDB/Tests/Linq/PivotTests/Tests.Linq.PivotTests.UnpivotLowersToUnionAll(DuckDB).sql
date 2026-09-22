-- DuckDB
SELECT
	row_1.Id,
	CAST('Q1' AS VARCHAR),
	row_1.Q1
FROM
	QuarterlySales row_1
WHERE
	row_1.Q1 IS NOT NULL
UNION ALL
SELECT
	row_2.Id,
	CAST('Q2' AS VARCHAR),
	row_2.Q2
FROM
	QuarterlySales row_2
WHERE
	row_2.Q2 IS NOT NULL
UNION ALL
SELECT
	row_3.Id,
	CAST('Q3' AS VARCHAR),
	row_3.Q3
FROM
	QuarterlySales row_3
WHERE
	row_3.Q3 IS NOT NULL
UNION ALL
SELECT
	row_4.Id,
	CAST('Q4' AS VARCHAR),
	row_4.Q4
FROM
	QuarterlySales row_4
WHERE
	row_4.Q4 IS NOT NULL

