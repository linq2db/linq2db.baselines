-- YDB Ydb
SELECT
	t1.ChildID as ChildID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				ch.ParentID as ParentID,
				ch.ChildID as ChildID
			FROM
				Child ch
			WHERE
				ch.ChildID = ch.ParentID * 10 + 1
		) t1 ON t1.ParentID = p.ParentID
WHERE
	p.ParentID <> 5

