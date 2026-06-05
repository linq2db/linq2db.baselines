-- ClickHouse.MySql ClickHouse

SELECT
	arrayStringConcat(arrayMap((t) -> tupleElement(t, 2), arraySort((t) -> (if(isNull(t.1), 1, 0), t.1), groupArray((t1.Value1, toString(t1.Value2))))), ' -> ')
FROM
	SampleClass t1

