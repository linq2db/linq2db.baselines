-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Data
FROM
	VALUES('Id Nullable(Int32), Data Nullable(String)', (20, 'Data 20'), (21, 'Data 21'), (22, 'Data 22')) t1

