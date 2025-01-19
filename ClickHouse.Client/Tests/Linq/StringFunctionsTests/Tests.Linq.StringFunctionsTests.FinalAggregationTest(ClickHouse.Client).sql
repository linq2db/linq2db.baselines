BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	arrayStringConcat(groupArray(t.Value1), ' -> ')
FROM
	SampleClass t

