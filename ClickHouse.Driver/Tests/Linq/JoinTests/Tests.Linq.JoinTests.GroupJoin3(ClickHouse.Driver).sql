-- ClickHouse.Driver ClickHouse

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
			t1.ParentID = 2
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- ClickHouse.Driver ClickHouse

SELECT
	t.ParentID,
	t.Value1
FROM
	Parent t
WHERE
	t.ParentID = 2

