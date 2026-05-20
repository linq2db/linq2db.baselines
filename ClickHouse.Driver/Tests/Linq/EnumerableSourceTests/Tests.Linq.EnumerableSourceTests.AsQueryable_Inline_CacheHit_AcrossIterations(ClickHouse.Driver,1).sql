-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Data
FROM
	VALUES('Id Nullable(Int32), Data Nullable(String)', (10, 'Data 10'), (11, 'Data 11')) t1

