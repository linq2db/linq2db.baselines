-- YDB Ydb

SELECT
	g_1.GrpId as GrpId,
	Unicode::JoinFromList(ListMap(ListSort(AGGREGATE_LIST((g_1.PK, g_1.`Value`)), ($t) -> { return (if($t.0 IS NULL, 0, 1), $t.0) }), ($t) -> { return $t.1 }), ''u) as Value_1
FROM
	ConcatGroupedEntity g_1
GROUP BY
	g_1.GrpId
ORDER BY
	GrpId

-- YDB Ydb

SELECT
	t1.PK as PK,
	t1.GrpId as GrpId,
	t1.`Value` as Value_1
FROM
	ConcatGroupedEntity t1

