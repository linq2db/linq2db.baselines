BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	arrayStringConcat(groupArray(t.Value1), ' -> ')
FROM
	SampleClass t

