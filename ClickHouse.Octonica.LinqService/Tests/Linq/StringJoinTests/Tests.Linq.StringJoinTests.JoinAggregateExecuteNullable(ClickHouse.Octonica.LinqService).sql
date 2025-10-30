BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	Coalesce(arrayStringConcat(arrayMap((t) -> tupleElement(t, 2), arraySort((t) -> (if(isNull(t.1), 0, 1), t.1), groupArray((t1.NotNullableValue, toString(Coalesce(t1.NullableValue, '')))))), ', '), '')
FROM
	SampleClass t1

