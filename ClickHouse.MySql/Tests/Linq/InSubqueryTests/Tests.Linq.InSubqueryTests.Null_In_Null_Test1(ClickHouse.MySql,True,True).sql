BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.PK,
	t.ID,
	t.GV
FROM
	test_in_1 t
WHERE
	t.ID IS NULL AND 1 IN (
		SELECT
			1
		FROM
			test_in_2 p
		WHERE
			p.ID IS NULL
	) OR
	t.ID IS NOT NULL AND t.ID IN (
		SELECT
			p.ID
		FROM
			test_in_2 p
	)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.PK,
	t1.ID,
	t1.GV
FROM
	test_in_1 t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.PK,
	t1.ID,
	t1.GV
FROM
	test_in_2 t1

