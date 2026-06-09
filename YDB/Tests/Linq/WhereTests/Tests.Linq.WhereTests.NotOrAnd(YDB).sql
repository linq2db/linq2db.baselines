-- YDB Ydb

SELECT
	c_1.ParentID as ParentID,
	c_1.ChildID as ChildID
FROM
	Child c_1
WHERE
	NOT (c_1.ParentID = 2 OR c_1.ParentID = 3) AND c_1.ChildID <> 44

