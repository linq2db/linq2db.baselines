-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Quarter as Quarter,
	t1.M1 as M1,
	t1.M2 as M2,
	t1.M3 as M3
FROM
	(
		SELECT
			Unwrap(CAST('Q1'u AS Text)) as Quarter,
			row_1.Id as Id,
			row_1.Jan as M1,
			row_1.Feb as M2,
			row_1.Mar as M3
		FROM
			MonthlySales row_1
		UNION ALL
		SELECT
			Unwrap(CAST('Q2'u AS Text)) as Quarter,
			row_2.Id as Id,
			row_2.Apr as M1,
			row_2.May as M2,
			row_2.Jun as M3
		FROM
			MonthlySales row_2
	) t1
ORDER BY
	t1.Quarter

