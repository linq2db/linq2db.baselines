-- YDB Ydb
SELECT
	i.`Value` as Value_1,
	i.Id as Id
FROM
	Item i
ORDER BY
	i.Id

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 2

SELECT
	l.ItemId as ItemId,
	l.Id as Id,
	l.Log as Log
FROM
	ItemLog l
WHERE
	l.ItemId IN ($Ids0_1, $Ids0_2)
ORDER BY
	l.ItemId,
	l.Id DESC

