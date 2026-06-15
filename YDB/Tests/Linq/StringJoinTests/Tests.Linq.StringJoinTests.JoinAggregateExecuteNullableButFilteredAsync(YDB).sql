-- YDB Ydb

SELECT
	Unicode::JoinFromList(ListMap(ListSort(AGGREGATE_LIST((t1.NotNullableValue, t1.NullableValue)), ($t) -> { return (if($t.0 IS NULL, 0, 1), $t.0) }), ($t) -> { return $t.1 }), ', 'u) as Join_1
FROM
	SampleClass t1

