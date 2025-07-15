BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	sumOrNull(c_1.Id)
FROM
	AsyncDataTable c_1
WHERE
	c_1.Id < 5

