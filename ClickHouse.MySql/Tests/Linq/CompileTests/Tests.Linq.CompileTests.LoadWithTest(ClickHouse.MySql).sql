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
		WHERE
			p.ParentID = 1 AND now() > toDateTime64('2020-02-29 00:00:00.0000000', 7)
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- ClickHouse.MySql ClickHouse
SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 1 AND now() > toDateTime64('2020-02-29 00:00:00.0000000', 7)

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
		WHERE
			p.ParentID = 2 AND now() > toDateTime64('2020-02-29 00:00:00.0000000', 7)
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- ClickHouse.MySql ClickHouse
SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 2 AND now() > toDateTime64('2020-02-29 00:00:00.0000000', 7)

