-- ClickHouse.MySql ClickHouse

SELECT
	t1.Item1,
	t1.Id,
	t1.TestId
FROM
	(
		SELECT
			toInt32(ROW_NUMBER() OVER (ORDER BY item_1.Id)) - 1 as Item1,
			item_1.Id as Id,
			item_1.TestId as TestId
		FROM
			TestTable item_1
	) t1
ORDER BY
	t1.Item1

