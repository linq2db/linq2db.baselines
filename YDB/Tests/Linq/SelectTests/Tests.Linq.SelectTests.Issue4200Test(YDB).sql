-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 2
DECLARE $Ids0_3 Int32
SET     $Ids0_3 = 3

SELECT
	i.PersonID as ID
FROM
	Person i
WHERE
	i.PersonID IN ($Ids0_1, $Ids0_2, $Ids0_3)

