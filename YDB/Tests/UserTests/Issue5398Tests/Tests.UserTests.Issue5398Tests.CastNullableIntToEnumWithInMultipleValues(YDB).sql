-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 2

SELECT
	i.Id as Id
FROM
	TestEnumTable i
WHERE
	i.`Value` IN ($Ids0_1, $Ids0_2)
ORDER BY
	i.Id

