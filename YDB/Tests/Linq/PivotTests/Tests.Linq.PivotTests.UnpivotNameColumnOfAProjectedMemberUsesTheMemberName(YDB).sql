-- YDB Ydb
SELECT
	x.Id as Id,
	Unwrap(CAST('Q1'u AS Text)) as Name,
	x.Q1 as Q1
FROM
	QuarterlySales x
WHERE
	x.Q1 IS NOT NULL
UNION ALL
SELECT
	x_1.Id as Id,
	Unwrap(CAST('Q2'u AS Text)) as Name,
	x_1.Q2 as Q1
FROM
	QuarterlySales x_1
WHERE
	x_1.Q2 IS NOT NULL

