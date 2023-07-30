BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Substring(t1.MiddleName, toInt32(1), toInt32(200))
FROM
	Person t1

