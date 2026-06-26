-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1
FROM
	Table1788 t1

-- YDB Ydb

SELECT
	l.Value1 as f1
FROM
	Table1788 p
		LEFT JOIN Table1788 l ON l.Id = p.Id + 1

