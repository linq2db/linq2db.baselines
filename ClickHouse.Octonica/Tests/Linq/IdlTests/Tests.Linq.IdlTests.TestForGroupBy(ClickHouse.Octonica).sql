-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Key_1,
	d.GrandChildID
FROM
	(
		SELECT DISTINCT
			x.ChildID as Key_1
		FROM
			GrandChild x
		WHERE
			x.ParentID IN (2)
	) m_1
		INNER JOIN GrandChild d ON m_1.Key_1 = d.ChildID
WHERE
	d.ParentID IN (2)

-- ClickHouse.Octonica ClickHouse

SELECT
	x.ChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (2)
GROUP BY
	x.ChildID

-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Key_1,
	d.GrandChildID
FROM
	(
		SELECT DISTINCT
			x.ChildID as Key_1
		FROM
			GrandChild x
		WHERE
			x.ParentID IN (3)
	) m_1
		INNER JOIN GrandChild d ON m_1.Key_1 = d.ChildID
WHERE
	d.ParentID IN (3)

-- ClickHouse.Octonica ClickHouse

SELECT
	x.ChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (3)
GROUP BY
	x.ChildID

