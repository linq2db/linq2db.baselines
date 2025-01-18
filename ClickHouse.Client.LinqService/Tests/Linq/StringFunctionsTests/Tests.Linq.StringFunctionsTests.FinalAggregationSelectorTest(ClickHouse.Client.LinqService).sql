BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	arrayStringConcat(groupArray(t1.Value1), ' -> ')
FROM
	SampleClass t1

