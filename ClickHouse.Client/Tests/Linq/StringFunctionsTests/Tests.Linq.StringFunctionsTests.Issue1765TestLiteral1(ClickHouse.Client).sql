BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	arrayStringConcat(groupArray(t.Value4), ' -> ')
FROM
	SampleClass t

