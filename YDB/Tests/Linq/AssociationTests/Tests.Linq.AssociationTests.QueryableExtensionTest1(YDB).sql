-- YDB Ydb

SELECT
	a_QueryableChildren.ParentID as ParentID,
	a_QueryableChildren.ChildID as ChildID
FROM
	Parent t1
		INNER JOIN Child a_QueryableChildren ON t1.ParentID = a_QueryableChildren.ParentID

