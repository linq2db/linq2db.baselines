-- ClickHouse.MySql ClickHouse
SELECT
	row_1.Id,
	toString('Q1') as Quarter,
	row_1.Q1
FROM
	QuarterlySales row_1
UNION ALL
SELECT
	row_2.Id as Id,
	toString('Q2') as Quarter,
	row_2.Q2 as Q1
FROM
	QuarterlySales row_2
UNION ALL
SELECT
	row_3.Id as Id,
	toString('Q3') as Quarter,
	row_3.Q3 as Q1
FROM
	QuarterlySales row_3
UNION ALL
SELECT
	row_4.Id as Id,
	toString('Q4') as Quarter,
	row_4.Q4 as Q1
FROM
	QuarterlySales row_4

