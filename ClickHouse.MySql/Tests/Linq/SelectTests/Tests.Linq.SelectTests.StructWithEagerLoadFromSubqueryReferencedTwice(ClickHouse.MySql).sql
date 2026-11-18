-- ClickHouse.MySql ClickHouse
SELECT
	m_1.ParentID,
	d.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID
ORDER BY
	d.ChildID

-- ClickHouse.MySql ClickHouse
SELECT
	m_1.ParentID
FROM
	Parent m_1

