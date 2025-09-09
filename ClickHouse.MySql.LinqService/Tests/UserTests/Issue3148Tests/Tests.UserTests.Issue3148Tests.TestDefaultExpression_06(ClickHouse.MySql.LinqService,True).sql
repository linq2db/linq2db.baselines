BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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
		INNER JOIN Child d ON m_1.ParentID = d.ParentID
WHERE
	d.ParentID <> 0

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	p.ParentID
FROM
	Parent p

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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
		INNER JOIN Child d ON m_1.ParentID = d.ParentID
WHERE
	d.ParentID <> 0

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	p.ParentID
FROM
	Parent p

