-- ClickHouse.MySql ClickHouse

SELECT
	t.PK,
	t.ID
FROM
	test_in_1 t
WHERE
	t.ID NOT IN (
		SELECT
			p.ID
		FROM
			test_in_2 p
	)
ORDER BY
	t.PK

-- ClickHouse.MySql ClickHouse

SELECT
	t1.PK,
	t1.ID
FROM
	test_in_1 t1

-- ClickHouse.MySql ClickHouse

SELECT
	t1.PK,
	t1.ID
FROM
	test_in_2 t1

