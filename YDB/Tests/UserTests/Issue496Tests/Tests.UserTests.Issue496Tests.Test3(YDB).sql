-- YDB Ydb

SELECT
	a_Children.ChildID as ChildID,
	a_Children.ParentID as ParentID
FROM
	Parent p
		INNER JOIN Child a_Children ON Unwrap(CAST(p.ParentID AS Int64)) = a_Children.ParentID
WHERE
	p.ParentID = 1

