BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	maxOrNull(c_1.Id)
FROM
	AsyncDataTable c_1
WHERE
	c_1.Id > 2

