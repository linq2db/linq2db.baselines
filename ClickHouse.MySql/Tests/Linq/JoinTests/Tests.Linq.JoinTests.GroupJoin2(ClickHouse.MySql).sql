-- ClickHouse.MySql ClickHouse

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
		WHERE
			t1.ParentID = 1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1
WHERE
	t1.ParentID = 1

