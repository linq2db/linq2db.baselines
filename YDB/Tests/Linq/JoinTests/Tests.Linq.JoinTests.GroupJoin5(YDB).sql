-- YDB Ydb

SELECT
	t2.ParentID as ParentID,
	t2.ChildID as ChildID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				t1.ParentID as ParentID,
				t1.ChildID as ChildID
			FROM
				(
					SELECT
						ch.ParentID as ParentID,
						ch.ChildID as ChildID,
						ROW_NUMBER() OVER (PARTITION BY ch.ParentID ORDER BY ch.ChildID) as rn
					FROM
						Child ch
				) t1
			WHERE
				t1.rn = 1
		) t2 ON p.ParentID = t2.ParentID
WHERE
	p.ParentID >= 1
ORDER BY
	p.ParentID

