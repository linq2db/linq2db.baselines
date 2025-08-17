BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	arrayStringConcat(groupArray(t.Value1), ' -> ')
FROM
	SampleClass t

