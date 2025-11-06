-- ClickHouse.MySql ClickHouse

SELECT
	Coalesce(arrayStringConcat(arrayMap((t) -> tupleElement(t, 2), arraySort((t) -> (if(isNull(t.1), 0, 1), t.1), groupArrayIf((t1.NotNullableValue, toString(t1.NullableValue)), t1.NullableValue IS NOT NULL AND t1.NullableValue IN ('A', 'B')))), ', '), '')
FROM
	SampleClass t1

