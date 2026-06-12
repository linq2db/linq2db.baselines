-- ClickHouse.Octonica ClickHouse

SELECT
	arrayStringConcat(groupArray(toString(t1.Value1)), ' -> ')
FROM
	SampleClass t1

