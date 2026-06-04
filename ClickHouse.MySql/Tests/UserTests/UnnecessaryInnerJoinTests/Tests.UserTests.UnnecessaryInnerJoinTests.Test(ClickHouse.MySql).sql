-- ClickHouse.MySql ClickHouse

SELECT
	t1.Field2
FROM
	Table2 t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Table1 x
		WHERE
			t1.Field2 = x.Field2 AND toInt64(x.Field1) IN (toInt64(1), toInt64(2), toInt64(3))
	)

