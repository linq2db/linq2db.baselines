-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Data
FROM
	VALUES(
		'Id Nullable(Int32), Data Nullable(String)',
		(0, 'Data 0'), (1, 'Data 1')
	) t1
ORDER BY
	t1.Id

