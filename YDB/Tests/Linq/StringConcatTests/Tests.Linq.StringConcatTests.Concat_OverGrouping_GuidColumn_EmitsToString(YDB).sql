-- YDB Ydb

SELECT
	g_1.GrpId as Key_1,
	Unicode::JoinFromList(ListMap(ListSort(AGGREGATE_LIST((g_1.PK, Unwrap(CAST(g_1.GuidV AS Text)))), ($t) -> { return (if($t.0 IS NULL, 0, 1), $t.0) }), ($t) -> { return $t.1 }), ''u) as Value_1
FROM
	ConcatGroupedTypedEntity g_1
GROUP BY
	g_1.GrpId
ORDER BY
	Key_1

-- YDB Ydb

SELECT
	t1.PK as PK,
	t1.GrpId as GrpId,
	t1.GuidV as GuidV,
	t1.IntV as IntV
FROM
	ConcatGroupedTypedEntity t1

