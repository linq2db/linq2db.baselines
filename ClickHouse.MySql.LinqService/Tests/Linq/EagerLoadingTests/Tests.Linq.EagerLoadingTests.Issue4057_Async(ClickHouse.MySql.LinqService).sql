BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID
FROM
	(
		SELECT
			x.ParentID as ParentID
		FROM
			Parent x
		WHERE
			x.ParentID = 3
		LIMIT 1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.ParentID = 3
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID
FROM
	(
		SELECT
			x.ParentID as ParentID
		FROM
			Parent x
		WHERE
			x.ParentID = 3
		LIMIT 1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.ParentID = 3
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID
FROM
	(
		SELECT
			x.ParentID as ParentID
		FROM
			Parent x
		WHERE
			x.ParentID = 3
		LIMIT 1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.ParentID = 3
LIMIT 1

