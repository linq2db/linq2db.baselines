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
				c_1.ParentID as ParentID,
				c_1.ChildID as ChildID
			FROM
				Child c_1
			LIMIT 1
		) c_2 ON o.ParentID = c_2.ParentID
ORDER BY
	c_2.ChildID DESC

