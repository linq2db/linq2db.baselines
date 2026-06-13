-- YDB Ydb

SELECT
	ROW_NUMBER() OVER (ORDER BY item_1.Id) - 1l as c1,
	item_1.Id as Id,
	item_1.TestId as TestId
FROM
	TestTable item_1
WHERE
	item_1.TestId <> 20
ORDER BY
	item_1.Id

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.TestId as TestId
FROM
	TestTable t1

