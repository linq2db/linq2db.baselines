-- ClickHouse.MySql ClickHouse
SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
	) m_1
		INNER JOIN Child d ON d.ParentID = m_1.ParentID

-- ClickHouse.MySql ClickHouse
SELECT
	p.ParentID
FROM
	Parent p

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

