BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t.ID
FROM
	test_in_1 t
WHERE
	t.ID IS NOT NULL AND (t.ID IS NULL AND 1 IN (
		SELECT
			1
		FROM
			test_in_2 p
		WHERE
			p.ID IS NOT NULL AND p.ID IS NULL
	) OR t.ID IS NOT NULL AND t.ID IN (
		SELECT
			p.ID
		FROM
			test_in_2 p
		WHERE
			p.ID IS NOT NULL
	))

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t1.ID
FROM
	test_in_1 t1

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t1.ID
FROM
	test_in_2 t1

