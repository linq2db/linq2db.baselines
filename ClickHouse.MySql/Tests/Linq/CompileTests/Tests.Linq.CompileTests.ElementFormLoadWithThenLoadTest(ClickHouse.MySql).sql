-- ClickHouse.MySql ClickHouse
SELECT
	m_1.ParentID,
	m_1.ChildID,
	m_1.ParentID_1,
	d_1.ParentID,
	d_1.ChildID,
	d_1.GrandChildID
FROM
	(
		SELECT DISTINCT
			d.ParentID as ParentID,
			d.ChildID as ChildID,
			t1.ParentID as ParentID_1
		FROM
			(
				SELECT
					p.ParentID as ParentID
				FROM
					Parent p
				WHERE
					p.ParentID = 1
				LIMIT 1
			) t1
				INNER JOIN Child d ON t1.ParentID = d.ParentID
	) m_1
		INNER JOIN GrandChild d_1 ON m_1.ParentID = d_1.ParentID AND m_1.ChildID = d_1.ChildID

-- ClickHouse.MySql ClickHouse
SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID
FROM
	(
		SELECT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID = 1
		LIMIT 1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- ClickHouse.MySql ClickHouse
SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 1
LIMIT 1

