-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Quarter as Quarter,
	t1.Amount as Amount
FROM
	(
		SELECT
			row_1.Id as Id,
			Unwrap(CAST('Q1'u AS Text)) as Quarter,
			row_1.Q1 as Amount
		FROM
			QuarterlySales row_1
		WHERE
			row_1.Q1 IS NOT NULL
		UNION ALL
		SELECT
			row_2.Id as Id,
			Unwrap(CAST('Q2'u AS Text)) as Quarter,
			row_2.Q2 as Amount
		FROM
			QuarterlySales row_2
		WHERE
			row_2.Q2 IS NOT NULL
		UNION ALL
		SELECT
			row_3.Id as Id,
			Unwrap(CAST('Q3'u AS Text)) as Quarter,
			row_3.Q3 as Amount
		FROM
			QuarterlySales row_3
		WHERE
			row_3.Q3 IS NOT NULL
		UNION ALL
		SELECT
			row_4.Id as Id,
			Unwrap(CAST('Q4'u AS Text)) as Quarter,
			row_4.Q4 as Amount
		FROM
			QuarterlySales row_4
		WHERE
			row_4.Q4 IS NOT NULL
	) t1
ORDER BY
	t1.Id,
	t1.Quarter

-- YDB Ydb
SELECT
	row_1.Id as Id,
	Unwrap(CAST('Q1'u AS Text)) as Quarter,
	row_1.Q1 as Q1
FROM
	QuarterlySales row_1
UNION ALL
SELECT
	row_2.Id as Id,
	Unwrap(CAST('Q2'u AS Text)) as Quarter,
	row_2.Q2 as Q1
FROM
	QuarterlySales row_2
UNION ALL
SELECT
	row_3.Id as Id,
	Unwrap(CAST('Q3'u AS Text)) as Quarter,
	row_3.Q3 as Q1
FROM
	QuarterlySales row_3
UNION ALL
SELECT
	row_4.Id as Id,
	Unwrap(CAST('Q4'u AS Text)) as Quarter,
	row_4.Q4 as Q1
FROM
	QuarterlySales row_4

