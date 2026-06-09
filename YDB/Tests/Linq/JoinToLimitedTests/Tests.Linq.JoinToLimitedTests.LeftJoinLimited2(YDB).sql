-- YDB Ydb

SELECT
	o.ParentID as ParentID,
	o.Value1 as Value1,
	c_2.ParentID as ParentID_1,
	c_2.ChildID as ChildID
FROM
	Parent o
		LEFT JOIN (
			SELECT
				t1.ParentID as ParentID,
				t1.ChildID as ChildID
			FROM
				(
					SELECT
						c_1.ParentID as ParentID,
						c_1.ChildID as ChildID,
						ROW_NUMBER() OVER (PARTITION BY c_1.ParentID ORDER BY c_1.ChildID DESC) as rn
					FROM
						Child c_1
				) t1
			WHERE
				t1.rn = 1
		) c_2 ON o.ParentID = c_2.ParentID

