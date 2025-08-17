BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	a_Parent.ParentID
FROM
	(
		SELECT
			c_1.ParentID as ParentID,
			c_1.ChildID as ChildID
		FROM
			Child c_1
		UNION DISTINCT
		SELECT
			t1.ParentID as ParentID,
			t1.ChildID as ChildID
		FROM
			Child t1
	) c_2
		LEFT JOIN Parent a_Parent ON c_2.ParentID = a_Parent.ParentID

