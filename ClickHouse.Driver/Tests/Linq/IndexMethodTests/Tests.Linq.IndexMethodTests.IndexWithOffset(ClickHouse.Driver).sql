-- ClickHouse.Driver ClickHouse

SELECT
	ROW_NUMBER() OVER (ORDER BY item_1.Id) - toInt64(1),
	item_1.Id,
	item_1.TestId
FROM
	TestTable item_1
ORDER BY
	item_1.Id

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.TestId
FROM
	TestTable t1

