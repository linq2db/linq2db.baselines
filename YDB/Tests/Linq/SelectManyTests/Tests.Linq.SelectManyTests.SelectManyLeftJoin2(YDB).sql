-- YDB Ydb

SELECT
	ch.ParentID as ParentID,
	ch.ChildID as ChildID
FROM
	Parent p
		LEFT JOIN Child ch ON p.ParentID = ch.ParentID

