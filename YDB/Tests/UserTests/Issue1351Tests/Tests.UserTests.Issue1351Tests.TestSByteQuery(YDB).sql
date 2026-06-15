-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.TestField as TestField,
	t1.TestNullable as TestNullable
FROM
	T1351Model t1
WHERE
	t1.TestField = 0t

-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.TestField as TestField,
	t1.TestNullable as TestNullable
FROM
	T1351Model t1
WHERE
	CAST(t1.TestNullable AS Int32) <> 1 OR t1.TestNullable IS NULL

