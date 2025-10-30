BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	s.value,
	s.id
FROM
	sample_class t1
		INNER JOIN (
			SELECT * FROM sample_class where id >= 1 and id < 15
		) s ON s.id = t1.id
WHERE
	s.id > 10
ORDER BY
	s.id

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t.value,
	t.id
FROM
	sample_class t
WHERE
	t.id >= 1 AND t.id < 15 AND t.id > 10
ORDER BY
	t.id

