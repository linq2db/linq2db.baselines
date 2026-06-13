-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 3

SELECT
	i.Id as Id
FROM
	TestEnumTable i
WHERE
	i.`Value` IN ($Ids0_1, $Ids0_2)
ORDER BY
	i.Id

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Value` as Value_1
FROM
	TestEnumTable t1

