BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t.PK,
	t.ID,
	t.GV
FROM
	test_in_1 t
WHERE
	t.ID IS NOT NULL AND t.ID NOT IN (
		SELECT
			p.ID
		FROM
			test_in_2 p
		WHERE
			p.ID IS NOT NULL
	)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.PK,
	t1.ID,
	t1.GV
FROM
	test_in_1 t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.PK,
	t1.ID,
	t1.GV
FROM
	test_in_2 t1

