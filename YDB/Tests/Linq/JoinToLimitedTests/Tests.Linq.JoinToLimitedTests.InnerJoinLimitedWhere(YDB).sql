-- YDB Ydb

SELECT
	o.ParentID as ParentID,
	o.Value1 as Value1,
	c_1.ParentID as ParentID_1,
	c_1.ChildID as ChildID
FROM
	Parent o
		INNER JOIN (
			SELECT
				x.ParentID as ParentID,
				x.ChildID as ChildID
			FROM
				Child x
			LIMIT 1
		) c_1 ON c_1.ParentID = o.ParentID

