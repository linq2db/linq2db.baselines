-- ClickHouse.Driver ClickHouse

SELECT
	s.value,
	s.id
FROM
	sample_class t1
		INNER JOIN (
			SELECT * FROM sample_class where id >= toInt64(1) and id < 14
		) s ON s.id = t1.id
WHERE
	s.id > 10
ORDER BY
	s.id

-- ClickHouse.Driver ClickHouse

SELECT
	t.value,
	t.id
FROM
	sample_class t
WHERE
	t.id >= 1 AND t.id < 14 AND t.id > 10
ORDER BY
	t.id

