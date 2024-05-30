BeforeExecute
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
		INNER JOIN Child d ON m_1.ParentID = d.ParentID
WHERE
	d.ParentID > 1 AND d.ParentID < 10

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.ParentID
FROM
	Parent t

