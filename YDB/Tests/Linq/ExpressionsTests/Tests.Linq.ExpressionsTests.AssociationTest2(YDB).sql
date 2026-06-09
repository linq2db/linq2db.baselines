-- YDB Ydb

SELECT
	gc.ParentID as ParentID,
	gc.ChildID as ChildID,
	gc.GrandChildID as GrandChildID
FROM
	Parent p
		INNER JOIN GrandChild gc ON p.ParentID = gc.ParentID
WHERE
	gc.ChildID = 22

