-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1

SELECT
	i.Id as Id
FROM
	TestEnumTable i
WHERE
	(i.`Value` IN ($Ids0_1) OR i.`Value` IS NULL)
ORDER BY
	i.Id

