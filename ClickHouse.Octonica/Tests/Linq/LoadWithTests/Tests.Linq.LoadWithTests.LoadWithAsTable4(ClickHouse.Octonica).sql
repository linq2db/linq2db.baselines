BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	lw_Parent.ParentID,
	detail.ParentID,
	detail.ChildID,
	a_Parent.ParentID,
	a_Parent.Value1
FROM
	(
		SELECT DISTINCT
			t1.ParentID as ParentID
		FROM
			(
				SELECT
					t.ParentID as ParentID
				FROM
					Parent t
				LIMIT toInt32(1)
			) t1
	) lw_Parent
		INNER JOIN Child detail ON lw_Parent.ParentID = detail.ParentID
		LEFT JOIN Parent a_Parent ON detail.ParentID = a_Parent.ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.ParentID,
	t.Value1
FROM
	Parent t
LIMIT toInt32(1)

