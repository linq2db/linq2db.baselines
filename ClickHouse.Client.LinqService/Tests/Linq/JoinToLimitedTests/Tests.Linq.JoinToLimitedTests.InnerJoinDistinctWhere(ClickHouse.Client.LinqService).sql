BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	o.ParentID,
	o.Value1,
	c_1.ParentID,
	c_1.ChildID
FROM
	Parent o
		INNER JOIN (
			SELECT DISTINCT
				x.ParentID as ParentID,
				x.ChildID as ChildID
			FROM
				Child x
		) c_1 ON c_1.ParentID = o.ParentID

