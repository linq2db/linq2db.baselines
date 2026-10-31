-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 5

SELECT
	t1.ParentID as ParentID,
	t1.ParentID_1 as ParentID_1,
	t1.ChildID as ChildID,
	t1.GrandChildID as GrandChildID
FROM
	Parent t
		LEFT JOIN (
			SELECT
				a_MiddleGeneric.ParentID as ParentID,
				a_Bottom.ParentID as ParentID_1,
				a_Bottom.ChildID as ChildID,
				a_Bottom.GrandChildID as GrandChildID
			FROM
				Child a_MiddleGeneric
					LEFT JOIN GrandChild a_Bottom ON a_MiddleGeneric.ChildID = a_Bottom.ChildID
			WHERE
				a_MiddleGeneric.ChildID > 1
		) t1 ON t.ParentID = t1.ParentID
WHERE
	t.ParentID IN ($Ids0_1, $Ids0_2)
ORDER BY
	t.ParentID

