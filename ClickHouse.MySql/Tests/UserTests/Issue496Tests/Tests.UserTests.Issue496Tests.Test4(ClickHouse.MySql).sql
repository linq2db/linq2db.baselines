-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Item1,
	d.ChildID,
	d.ParentID
FROM
	(
		SELECT DISTINCT
			p.ParentID as Item1
		FROM
			Parent p
	) m_1
		INNER JOIN Child d ON toInt64(m_1.Item1) = d.ParentID

-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID
FROM
	Parent p

