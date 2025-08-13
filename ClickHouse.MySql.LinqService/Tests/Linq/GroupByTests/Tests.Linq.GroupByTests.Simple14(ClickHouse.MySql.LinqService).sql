BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.ParentID,
	d_1.Key_1
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
	) m_1
		INNER JOIN (
			SELECT
				d.ParentID as Key_1
			FROM
				Child d
			GROUP BY
				d.ParentID
		) d_1 ON m_1.ParentID = d_1.Key_1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID
FROM
	Parent p

