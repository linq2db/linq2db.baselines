-- YDB Ydb

SELECT
	o.ParentID as ParentID,
	o.Value1 as Value1,
	c_2.ParentID as ParentID_1,
	c_2.ChildID as ChildID
FROM
	Parent o
		INNER JOIN (
			SELECT
				c_1.ParentID as ParentID,
				c_1.ChildID as ChildID,
				ROW_NUMBER() OVER (PARTITION BY c_1.ParentID ORDER BY c_1.ChildID DESC) as rn
			FROM
				Child c_1
		) c_2 ON c_2.ParentID = o.ParentID
WHERE
	c_2.rn = 1

