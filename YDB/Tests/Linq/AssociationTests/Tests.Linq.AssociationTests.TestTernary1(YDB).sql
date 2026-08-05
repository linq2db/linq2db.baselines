-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 5

SELECT
	a_Middle.ParentID as ParentID,
	a_Bottom.ParentID as ParentID_1,
	a_Bottom.ChildID as ChildID,
	a_Bottom.GrandChildID as GrandChildID
FROM
	Parent t
		LEFT JOIN Child a_Middle ON t.ParentID = a_Middle.ParentID
		LEFT JOIN GrandChild a_Bottom ON a_Middle.ChildID = a_Bottom.ChildID
WHERE
	t.ParentID IN ($Ids0_1, $Ids0_2)
ORDER BY
	t.ParentID

