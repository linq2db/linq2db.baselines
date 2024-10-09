BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN t2.projection__set_id__ = 0 THEN true
		ELSE false
	END,
	t2.ParentID,
	t2.ParentID_1,
	t2.ChildID
FROM
	(
		SELECT
			t1.ParentID as ParentID,
			t1.ParentID as ParentID_1,
			t1.ChildID as ChildID,
			toInt32(0) as projection__set_id__
		FROM
			Parent p
				LEFT JOIN (
					SELECT
						a_Children.ParentID as ParentID,
						a_Children.ChildID as ChildID,
						ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ParentID) as rn,
						a_Children.ParentID as ParentID_1
					FROM
						Child a_Children
				) t1 ON p.ParentID = t1.ParentID_1 AND t1.rn <= 1
		WHERE
			p.ParentID = 1
		UNION ALL
		SELECT
			toInt32(NULL) as ParentID,
			toInt32(NULL) as ParentID_1,
			toInt32(NULL) as ChildID,
			toInt32(1) as projection__set_id__
		FROM
			Parent p_1
		WHERE
			p_1.ParentID <> 1
	) t2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID
FROM
	(
		SELECT DISTINCT
			t1.ParentID as ParentID
		FROM
			Parent t1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

