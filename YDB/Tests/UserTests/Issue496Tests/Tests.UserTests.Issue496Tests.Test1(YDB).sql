-- YDB Ydb

SELECT
	a_Children.ChildID as ChildID,
	a_Children.ParentID as ParentID
FROM
	Parent c_1
		INNER JOIN Child a_Children ON c_1.ParentID = a_Children.ParentID
WHERE
	c_1.ParentID = 1

