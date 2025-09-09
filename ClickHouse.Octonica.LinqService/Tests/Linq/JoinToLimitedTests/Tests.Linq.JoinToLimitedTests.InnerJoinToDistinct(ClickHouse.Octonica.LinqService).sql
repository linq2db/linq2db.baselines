BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	o.ParentID,
	o.Value1,
	c_2.ParentID,
	c_2.ChildID
FROM
	Parent o
		INNER JOIN (
			SELECT DISTINCT
				c_1.ParentID as ParentID,
				c_1.ChildID as ChildID
			FROM
				Child c_1
		) c_2 ON o.ParentID = c_2.ParentID

