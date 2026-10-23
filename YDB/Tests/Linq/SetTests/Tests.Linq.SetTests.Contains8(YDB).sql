-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 111
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 211

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
		INNER JOIN Child ch ON p.ParentID = ch.ParentID
		INNER JOIN GrandChild gc ON ch.ChildID = gc.ChildID
WHERE
	gc.GrandChildID IN ($Ids0_1, $Ids0_2)

