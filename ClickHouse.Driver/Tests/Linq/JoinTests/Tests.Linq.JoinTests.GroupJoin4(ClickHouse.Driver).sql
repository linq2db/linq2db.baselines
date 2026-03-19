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
			t1.ParentID = 3
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1
WHERE
	t1.ParentID = 3

