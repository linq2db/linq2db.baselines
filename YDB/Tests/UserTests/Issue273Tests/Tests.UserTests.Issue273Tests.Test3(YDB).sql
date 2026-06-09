-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 0

SELECT
	x.ID as Id,
	x.BigIntValue as TestField
FROM
	LinqDataTypes x
WHERE
	x.BigIntValue IN ($Ids0_1)

