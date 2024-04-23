BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	_.ParentID
FROM
	Parent _

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.ParentID,
	d.ParentID
FROM
	(
		SELECT DISTINCT
			_.ParentID as ParentID
		FROM
			Parent _
	) m_1
		INNER JOIN (
			SELECT 1 AS ParentID
			UNION ALL
			SELECT 2
			UNION ALL
			SELECT 3
			UNION ALL
			SELECT 4
			UNION ALL
			SELECT 5
			UNION ALL
			SELECT 6
			UNION ALL
			SELECT 7) d ON d.ParentID = m_1.ParentID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	_.ParentID
FROM
	Parent _

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

