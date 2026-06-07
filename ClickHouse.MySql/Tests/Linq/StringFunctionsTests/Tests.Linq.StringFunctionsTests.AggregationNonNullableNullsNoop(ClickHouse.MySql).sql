-- ClickHouse.MySql ClickHouse

SELECT
	arrayStringConcat(arrayMap((t) -> tupleElement(t, 2), arraySort((t) -> (if(isNull(t.1), 0, 1), t.1), groupArray((t1.Id, toString(t1.Value2))))), ' -> ')
FROM
	SampleClass t1

-- ClickHouse.MySql ClickHouse

SELECT
	arrayStringConcat(arrayMap((t) -> tupleElement(t, 2), arraySort((t) -> (if(isNull(t.1), 0, 1), t.1), groupArray((t1.Id, toString(t1.Value2))))), ' -> ')
FROM
	SampleClass t1

