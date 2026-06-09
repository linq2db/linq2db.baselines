-- YDB Ydb

SELECT DISTINCT
	c_1.ParentID as ParentID,
	c_1.ChildID as ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID < 4
ORDER BY
	ChildID

-- YDB Ydb

SELECT DISTINCT
	c_1.ParentID as ParentID,
	c_1.ChildID as ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID < 4

