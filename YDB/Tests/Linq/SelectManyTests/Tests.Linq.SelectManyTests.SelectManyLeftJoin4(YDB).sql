-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	ch.ParentID as ParentID_1,
	ch.ChildID as ChildID
FROM
	Parent p
		LEFT JOIN Child ch ON p.ParentID = ch.ParentID

