BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	row1.Id
FROM
	table1 row1
		INNER JOIN table2 row2 ON row1.Id = row2.Table1Id
WHERE
	startsWith(row2.Field2, 'test')
UNION DISTINCT
SELECT
	row1_1.Id as Id
FROM
	table1 row1_1
		INNER JOIN table3 row3 ON row1_1.Id = row3.Table1Id
WHERE
	row3.Field3 = 'test'
UNION DISTINCT
SELECT
	row1_2.Id as Id
FROM
	table1 row1_2
WHERE
	startsWith(row1_2.Field1, 'test')

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	row1.Id
FROM
	table1 row1
		INNER JOIN table2 row2 ON row1.Id = row2.Table1Id
WHERE
	startsWith(row2.Field2, 'test')
UNION DISTINCT
SELECT
	row1_1.Id as Id
FROM
	table1 row1_1
		INNER JOIN table3 row3 ON row1_1.Id = row3.Table1Id
WHERE
	row3.Field3 = 'test'
UNION DISTINCT
SELECT
	row1_2.Id as Id
FROM
	table1 row1_2
WHERE
	startsWith(row1_2.Field1, 'test')

