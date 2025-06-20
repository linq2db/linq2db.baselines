BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.ID
FROM
	test_in_1 t
WHERE
	t.ID IS NOT NULL AND t.ID IN (
		SELECT
			p.ID
		FROM
			test_in_2 p
		WHERE
			p.ID IS NOT NULL
	)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	test_in_1 t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	test_in_2 t1

