-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 5

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID,
	t1.GrandChildID as GrandChildID
FROM
	Parent t
		LEFT JOIN (
			SELECT
				a_Bottom1.ParentID as ParentID,
				a_Bottom1.ChildID as ChildID,
				a_Bottom1.GrandChildID as GrandChildID,
				a_Middle.ParentID as ParentID_1
			FROM
				Child a_Middle
					LEFT JOIN GrandChild a_Bottom1 ON a_Middle.ChildID = a_Bottom1.ChildID
		) t1 ON t.ParentID = t1.ParentID_1
WHERE
	t.ParentID IN ($Ids0_1, $Ids0_2)
ORDER BY
	t.ParentID

