-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Half as Half,
	t1.A as A,
	t1.B as B
FROM
	(
		SELECT
			Unwrap(CAST('H1'u AS Text)) as Half,
			row_1.Id as Id,
			row_1.Jan as A,
			row_1.Feb as B
		FROM
			MonthlySales row_1
		UNION ALL
		SELECT
			Unwrap(CAST('H2'u AS Text)) as Half,
			row_2.Id as Id,
			row_2.Mar as A,
			row_2.Apr as B
		FROM
			MonthlySales row_2
		UNION ALL
		SELECT
			Unwrap(CAST('H3'u AS Text)) as Half,
			row_3.Id as Id,
			row_3.May as A,
			row_3.Jun as B
		FROM
			MonthlySales row_3
	) t1
ORDER BY
	t1.Half

