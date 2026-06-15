-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 21
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 11

SELECT
	t1.ChildID as ChildID
FROM
	Child t1
WHERE
	t1.ChildID IN ($Ids0_1, $Ids0_2)

