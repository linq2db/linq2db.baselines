BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.ChildID,
	d.GrandChildID
FROM
	(
		SELECT DISTINCT
			x.ChildID as ChildID
		FROM
			GrandChild x
		WHERE
			x.ParentID IN (2)
	) m_1
		INNER JOIN GrandChild d ON m_1.ChildID = d.ChildID
WHERE
	d.ParentID IN (2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.ChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (2)
GROUP BY
	x.ChildID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.ChildID,
	d.GrandChildID
FROM
	(
		SELECT DISTINCT
			x.ChildID as ChildID
		FROM
			GrandChild x
		WHERE
			x.ParentID IN (3)
	) m_1
		INNER JOIN GrandChild d ON m_1.ChildID = d.ChildID
WHERE
	d.ParentID IN (3)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.ChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (3)
GROUP BY
	x.ChildID

