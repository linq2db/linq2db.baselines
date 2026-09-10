-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 2

SELECT
	x.ParentID as ParentID,
	x.ChildID as ChildID,
	x.GrandChildID as GrandChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN ($Ids0_1)

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 3

SELECT
	x.ParentID as ParentID,
	x.ChildID as ChildID,
	x.GrandChildID as GrandChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN ($Ids0_1)

