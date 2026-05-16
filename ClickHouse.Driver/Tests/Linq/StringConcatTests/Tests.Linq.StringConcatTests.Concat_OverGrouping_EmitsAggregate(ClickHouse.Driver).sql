-- ClickHouse.Driver ClickHouse

SELECT
	g_1.GrpId,
	arrayStringConcat(arrayMap((t) -> tupleElement(t, 2), arraySort((t) -> (if(isNull(t.1), 0, 1), t.1), groupArray((g_1.PK, toString(Coalesce(g_1.Value, '')))))), '')
FROM
	ConcatGroupedEntity g_1
GROUP BY
	g_1.GrpId
ORDER BY
	g_1.GrpId

-- ClickHouse.Driver ClickHouse

SELECT
	t1.PK,
	t1.GrpId,
	t1.Value
FROM
	ConcatGroupedEntity t1

