-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID
FROM
	Parent t1

-- ClickHouse.MySql ClickHouse

SELECT
	m_1.ParentID,
	d.ParentID
FROM
	(
		SELECT DISTINCT
			t1.ParentID as ParentID
		FROM
			Parent t1
	) m_1
		INNER JOIN VALUES('ParentID Nullable(Int32)', (1), (2), (3), (4), (5), (6), (7)) d ON d.ParentID = m_1.ParentID

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID
FROM
	Parent t1

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

