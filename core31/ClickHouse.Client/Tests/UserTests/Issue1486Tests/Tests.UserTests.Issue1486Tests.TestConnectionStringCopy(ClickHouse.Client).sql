BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	lw_Parent.ParentID,
	detail.ParentID,
	detail.ChildID
FROM
	(
		SELECT DISTINCT
			t2.ParentID as ParentID
		FROM
			(
				SELECT
					a_Parent.ParentID as ParentID
				FROM
					Child t1
						LEFT JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID
				LIMIT toInt32(1)
			) t2
	) lw_Parent
		INNER JOIN Child detail ON lw_Parent.ParentID = detail.ParentID

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID,
	a_Parent.ParentID,
	a_Parent.Value1
FROM
	Child t1
		LEFT JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID
LIMIT toInt32(1)

