BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.ParentID,
	d_1.ParentID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
	) m_1
		INNER JOIN (
			SELECT
				d.ParentID as ParentID
			FROM
				Child d
			GROUP BY
				d.ParentID
		) d_1 ON m_1.ParentID = d_1.ParentID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID
FROM
	Parent p

