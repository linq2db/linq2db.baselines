BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t.PK,
	t.ID
FROM
	test_in_1 t
WHERE
	t.ID IN (
		SELECT
			p.ID
		FROM
			test_in_2 p
	)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.PK,
	t1.ID
FROM
	test_in_1 t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.PK,
	t1.ID
FROM
	test_in_2 t1

