BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	c_1.value,
	c_1.id
FROM
	(
		SELECT * FROM
		sample_class
		where id >= toInt64(5) and id < 15
	) c_1
WHERE
	c_1.id > 10
ORDER BY
	c_1.id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.value,
	t.id
FROM
	sample_class t
WHERE
	t.id >= 5 AND t.id < 15 AND t.id > 10
ORDER BY
	t.id

