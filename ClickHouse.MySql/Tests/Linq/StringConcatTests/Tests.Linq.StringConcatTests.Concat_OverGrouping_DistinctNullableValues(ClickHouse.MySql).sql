-- ClickHouse.MySql ClickHouse

SELECT
	g_1.GrpId,
	arrayStringConcat(arrayMap((t) -> tupleElement(t, 2), arrayDistinct(arraySort((t) -> (if(isNull(t.1), 0, 1), t.1), groupUniqArrayIf((g_1.Value, toString(g_1.Value)), g_1.Value IS NOT NULL)))), '')
FROM
	ConcatGroupedEntity g_1
GROUP BY
	g_1.GrpId
ORDER BY
	g_1.GrpId

-- ClickHouse.MySql ClickHouse

SELECT
	t1.PK,
	t1.GrpId,
	t1.Value
FROM
	ConcatGroupedEntity t1

