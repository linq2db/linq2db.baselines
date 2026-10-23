-- YDB Ydb
SELECT
	ch.ParentID as ParentID,
	ch.ChildID as ChildID,
	p.ParentID as ParentID_1,
	p.Value1 as Value1
FROM
	Parent p
		LEFT JOIN Child ch ON p.ParentID = ch.ParentID
WHERE
	ch.ParentID IS NULL

