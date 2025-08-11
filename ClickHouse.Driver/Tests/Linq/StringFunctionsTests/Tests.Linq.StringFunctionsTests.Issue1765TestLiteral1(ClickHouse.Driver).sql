BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	arrayStringConcat(groupArray(t.Value4), ' -> ')
FROM
	SampleClass t

