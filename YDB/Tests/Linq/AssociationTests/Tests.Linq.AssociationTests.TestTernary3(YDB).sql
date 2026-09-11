-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 5

SELECT
	a_Bottom1.ParentID as ParentID,
	a_Bottom1.ChildID as ChildID,
	a_Bottom1.GrandChildID as GrandChildID
FROM
	Parent t
		LEFT JOIN Child a_Middle ON t.ParentID = a_Middle.ParentID
		LEFT JOIN GrandChild a_Bottom1 ON a_Middle.ChildID = a_Bottom1.ChildID
WHERE
	t.ParentID IN ($Ids0_1, $Ids0_2)
ORDER BY
	t.ParentID

