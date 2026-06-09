-- YDB Ydb

SELECT DISTINCT
	x.ParentID as ParentID,
	x.ChildID as ChildID
FROM
	Child x
		INNER JOIN Parent u ON x.ParentID = u.ParentID
WHERE
	u.Value1 > 5 AND x.ChildID > 30

-- YDB Ydb

SELECT DISTINCT
	x.ParentID as ParentID,
	x.ChildID as ChildID
FROM
	Child x
		INNER JOIN Parent u ON x.ParentID = u.ParentID
WHERE
	u.Value1 > 5 AND x.ChildID > 30

