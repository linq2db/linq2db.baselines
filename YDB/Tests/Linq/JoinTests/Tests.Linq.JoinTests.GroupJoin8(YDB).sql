-- YDB Ydb

SELECT
	t2.ParentID as ParentID,
	t2.ChildID as ChildID
FROM
	Parent t3
		LEFT JOIN (
			SELECT
				t1.ParentID as ParentID,
				t1.ChildID as ChildID
			FROM
				(
					SELECT
						c_1.ParentID as ParentID,
						c_1.ChildID as ChildID,
						ROW_NUMBER() OVER (PARTITION BY c_1.ParentID ORDER BY c_1.ChildID) as rn
					FROM
						Child c_1
				) t1
			WHERE
				t1.rn = 1
		) t2 ON t3.ParentID = t2.ParentID

