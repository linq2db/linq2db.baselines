-- YDB Ydb

SELECT
	p.ParentID as ParentID
FROM
	Child c_1
		INNER JOIN Parent p ON c_1.ParentID = p.ParentID
WHERE
	c_1.ChildID = 11
UNION
SELECT
	c_2.ParentID as ParentID
FROM
	Child c_2
WHERE
	c_2.ChildID = 11

