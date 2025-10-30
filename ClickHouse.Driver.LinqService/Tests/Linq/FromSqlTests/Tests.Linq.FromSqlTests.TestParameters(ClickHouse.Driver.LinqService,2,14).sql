BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	c_1.value,
	c_1.id
FROM
	(
		SELECT * FROM
		sample_class
		where id >= 5 and id < 14
	) c_1
WHERE
	c_1.id > 10
ORDER BY
	c_1.id

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t.value,
	t.id
FROM
	sample_class t
WHERE
	t.id >= 5 AND t.id < 14 AND t.id > 10
ORDER BY
	t.id

