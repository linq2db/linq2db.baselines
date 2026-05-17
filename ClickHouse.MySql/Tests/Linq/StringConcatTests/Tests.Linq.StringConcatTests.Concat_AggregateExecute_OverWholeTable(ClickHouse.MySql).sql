-- ClickHouse.MySql ClickHouse

SELECT
	arrayStringConcat(arrayMap((t) -> tupleElement(t, 2), arraySort((t) -> (if(isNull(t.1), 0, 1), t.1), groupArray((t1.PK, toString(Coalesce(t1.Value, '')))))), '')
FROM
	ConcatGroupedEntity t1

