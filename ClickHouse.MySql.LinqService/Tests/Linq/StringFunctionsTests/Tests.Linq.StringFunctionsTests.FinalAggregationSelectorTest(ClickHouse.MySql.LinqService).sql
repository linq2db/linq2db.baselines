BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	arrayStringConcat(groupArray(t1.Value1), ' -> ')
FROM
	SampleClass t1

