-- ClickHouse.MySql ClickHouse

SELECT
	arrayStringConcat(arrayMap((t) -> tupleElement(t, 2), arraySort((t) -> (if(isNull(t.1), 0, 1), t.1), groupArrayIf((t1.PK, toString(t1.Value)), t1.Value IS NOT NULL))), '')
FROM
	ConcatGroupedEntity t1

