BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	arrayStringConcat(groupArray(t1.Value4), ' -> ')
FROM
	SampleClass t1

