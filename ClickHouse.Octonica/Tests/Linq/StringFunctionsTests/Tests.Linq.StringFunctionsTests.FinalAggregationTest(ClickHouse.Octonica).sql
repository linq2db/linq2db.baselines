BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	arrayStringConcat(groupArray(t.Value1), ' -> ')
FROM
	SampleClass t

