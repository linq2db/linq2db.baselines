BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	o.ParentID,
	o.Value1,
	x.ParentID,
	x.ChildID
FROM
	Parent o
		INNER JOIN (
			SELECT DISTINCT
				t1.ParentID as ParentID,
				t1.ChildID as ChildID
			FROM
				Child t1
		) x ON x.ParentID = o.ParentID

