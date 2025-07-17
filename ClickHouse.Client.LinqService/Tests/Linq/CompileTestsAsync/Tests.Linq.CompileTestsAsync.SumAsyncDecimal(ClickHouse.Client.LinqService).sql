BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	sumOrNull(toDecimal128(c_1.Id, 10))
FROM
	AsyncDataTable c_1
WHERE
	c_1.Id < 5

