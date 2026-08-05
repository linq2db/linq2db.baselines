-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 2

SELECT
	p.ParentID as ParentID,
	p.ChildID as ChildID
FROM
	Child p
		INNER JOIN Parent a_Parent1 ON p.ParentID = a_Parent1.ParentID
WHERE
	a_Parent1.ParentID IN ($Ids0_1, $Ids0_2)

