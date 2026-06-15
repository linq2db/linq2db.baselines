-- YDB Ydb

SELECT
	ch.ParentID as ParentID,
	ch.ChildID as ChildID
FROM
	Parent p
		CROSS JOIN Child ch
WHERE
	p.ParentID = ch.ParentID

