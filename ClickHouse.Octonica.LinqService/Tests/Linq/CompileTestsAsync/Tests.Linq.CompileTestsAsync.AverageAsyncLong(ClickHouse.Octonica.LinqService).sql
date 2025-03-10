BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	avgOrNull(toInt64(c_1.Id))
FROM
	AsyncDataTable c_1
WHERE
	c_1.Id < 5

