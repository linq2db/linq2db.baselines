BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	arrayStringConcat(groupArray(t.Value4), ' -> ')
FROM
	SampleClass t

