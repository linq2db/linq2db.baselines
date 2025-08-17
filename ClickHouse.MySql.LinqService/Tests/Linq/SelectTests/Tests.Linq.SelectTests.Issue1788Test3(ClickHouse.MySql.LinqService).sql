BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Value1
FROM
	Table1788 t1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	l.Value1
FROM
	Table1788 p
		LEFT JOIN Table1788 l ON l.Id = p.Id + 1

