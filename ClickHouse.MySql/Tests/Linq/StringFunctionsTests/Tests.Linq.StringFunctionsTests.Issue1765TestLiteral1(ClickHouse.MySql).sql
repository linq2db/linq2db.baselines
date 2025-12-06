-- ClickHouse.MySql ClickHouse

SELECT
	arrayStringConcat(groupArray(toString(t1.Value4)), ' -> ')
FROM
	SampleClass t1

