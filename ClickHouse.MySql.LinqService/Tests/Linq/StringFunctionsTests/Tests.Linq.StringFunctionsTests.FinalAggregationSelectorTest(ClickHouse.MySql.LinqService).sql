BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	arrayStringConcat(groupArray(t1.Value1), ' -> ')
FROM
	SampleClass t1

