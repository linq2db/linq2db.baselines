BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	sumOrNull(toFloat64(c_1.Id))
FROM
	AsyncDataTable c_1
WHERE
	c_1.Id < 5

