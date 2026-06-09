-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	q1.GrandChildID as GrandChildID
FROM
	Parent p
		INNER JOIN GrandChild q1 ON p.ParentID = q1.ParentID

