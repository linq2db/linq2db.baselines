-- ClickHouse.MySql ClickHouse
SELECT
	t_1.RowNum_1,
	t_1.CatRowNum,
	toInt64(ROW_NUMBER() OVER (PARTITION BY t_1.RowNum_1 ORDER BY t_1.Id)),
	toInt64(ROW_NUMBER() OVER (PARTITION BY t_1.CatRowNum ORDER BY t_1.Id))
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (ORDER BY t.Id)) as RowNum_1,
			toInt64(ROW_NUMBER() OVER (PARTITION BY t.CategoryId ORDER BY t.Id)) as CatRowNum,
			t.Id as Id
		FROM
			WindowFunctionTestEntity t
	) t_1

