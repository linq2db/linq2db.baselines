-- YDB Ydb

SELECT
	o.ParentID as ParentID,
	o.Value1 as Value1,
	c_2.ParentID as ParentID_1,
	c_2.ChildID as ChildID
FROM
	Parent o
		INNER JOIN (
			SELECT DISTINCT
				c_1.ParentID as ParentID,
				c_1.ChildID as ChildID
			FROM
				Child c_1
		) c_2 ON c_2.ParentID = o.ParentID

