-- YDB Ydb
DECLARE $Ids0_1 Text(1) -- String
SET     $Ids0_1 = 'A'u
DECLARE $Ids0_2 Text(1) -- String
SET     $Ids0_2 = 'B'u

SELECT
	Unicode::JoinFromList(AGGREGATE_LIST(Coalesce(x.NullableValue, ''u)), ', 'u) as Join_1
FROM
	SampleClass x
WHERE
	x.NullableValue IS NOT NULL AND x.NullableValue IN ($Ids0_1, $Ids0_2)

