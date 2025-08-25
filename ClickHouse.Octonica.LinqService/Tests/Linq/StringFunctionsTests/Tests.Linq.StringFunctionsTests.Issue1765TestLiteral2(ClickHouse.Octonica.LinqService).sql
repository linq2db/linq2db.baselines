BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	arrayStringConcat(groupArray(t1.Value4), ' -> ')
FROM
	SampleClass t1

