-- YDB Ydb
SELECT
	t_1.RowNum_1 as RowNum_1,
	t_1.CatRowNum as CatRowNum,
	ROW_NUMBER() OVER (PARTITION BY t_1.RowNum_1 ORDER BY t_1.Id) as c1,
	ROW_NUMBER() OVER (PARTITION BY t_1.CatRowNum ORDER BY t_1.Id) as c2
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY t.Id) as RowNum_1,
			ROW_NUMBER() OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as CatRowNum,
			t.Id as Id
		FROM
			WindowFunctionTestEntity t
	) t_1

