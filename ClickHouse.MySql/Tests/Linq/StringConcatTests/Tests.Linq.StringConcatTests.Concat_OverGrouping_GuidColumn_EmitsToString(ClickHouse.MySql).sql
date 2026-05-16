-- ClickHouse.MySql ClickHouse

SELECT
	g_1.GrpId,
	arrayStringConcat(arrayMap((t) -> tupleElement(t, 2), arraySort((t) -> (if(isNull(t.1), 0, 1), t.1), groupArray((g_1.PK, toString(lowerUTF8(toString(g_1.GuidV))))))), '')
FROM
	ConcatGroupedTypedEntity g_1
GROUP BY
	g_1.GrpId
ORDER BY
	g_1.GrpId

-- ClickHouse.MySql ClickHouse

SELECT
	t1.PK,
	t1.GrpId,
	t1.GuidV,
	t1.IntV
FROM
	ConcatGroupedTypedEntity t1

