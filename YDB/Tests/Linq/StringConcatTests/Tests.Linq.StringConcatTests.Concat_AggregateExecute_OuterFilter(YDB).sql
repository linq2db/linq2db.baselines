-- YDB Ydb

SELECT
	Unicode::JoinFromList(ListMap(ListSort(AGGREGATE_LIST((t1.PK, t1.`Value`)), ($t) -> { return (if($t.0 IS NULL, 0, 1), $t.0) }), ($t) -> { return $t.1 }), ''u) as Concat
FROM
	ConcatGroupedEntity t1

