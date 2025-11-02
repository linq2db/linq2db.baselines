-- ClickHouse.MySql ClickHouse

SELECT
	t.ID
FROM
	test_in_1 t
WHERE
	NOT (t.ID IS NULL AND 1 IN (
		SELECT
			1
		FROM
			test_in_2 p
		WHERE
			p.ID IS NULL
	) OR t.ID IS NOT NULL AND t.ID IN (
		SELECT
			p_1.ID
		FROM
			test_in_2 p_1
	))

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	test_in_1 t1

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	test_in_2 t1

