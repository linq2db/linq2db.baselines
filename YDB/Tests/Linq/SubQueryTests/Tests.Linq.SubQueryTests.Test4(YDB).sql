-- YDB Ydb

SELECT
	t2.ChildID as ChildID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				t1.ChildID as ChildID,
				t1.ParentID as ParentID
			FROM
				(
					SELECT
						ch.ChildID as ChildID,
						ROW_NUMBER() OVER (PARTITION BY ch.ParentID ORDER BY ch.ParentID) as rn,
						ch.ParentID as ParentID
					FROM
						Child ch
					WHERE
						ch.ChildID = ch.ParentID * 10 + 1
				) t1
			WHERE
				t1.rn = 1
		) t2 ON t2.ParentID = p.ParentID
WHERE
	p.ParentID <> 5

