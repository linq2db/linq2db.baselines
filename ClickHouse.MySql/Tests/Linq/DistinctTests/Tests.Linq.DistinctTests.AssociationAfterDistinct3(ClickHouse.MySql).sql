-- ClickHouse.MySql ClickHouse

SELECT
	ch_1.ChildID,
	ch_1.ParentID,
	a_Parent_1.Value1
FROM
	(
		SELECT DISTINCT
			ch.ParentID as ParentID,
			ch.ChildID as ChildID,
			a_Parent.ParentID as ParentID_1,
			a_Parent.Value1 as Value1
		FROM
			Child ch
				LEFT JOIN Parent a_Parent ON ch.ParentID = a_Parent.ParentID
	) ch_1
		LEFT JOIN Parent a_Parent_1 ON ch_1.ParentID = a_Parent_1.ParentID

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID,
	a_Parent.ParentID,
	a_Parent.Value1
FROM
	Child t1
		LEFT JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID

