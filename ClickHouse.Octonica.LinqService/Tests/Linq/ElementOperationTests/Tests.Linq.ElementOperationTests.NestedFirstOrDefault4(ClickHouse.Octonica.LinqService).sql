BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.ParentID,
	d_1.ParentID,
	d_1.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
	) m_1
		INNER JOIN (
			SELECT DISTINCT
				d.ChildID as ChildID,
				d.ParentID as ParentID
			FROM
				Child d
			WHERE
				d.ParentID > 0
		) d_1 ON m_1.ParentID = d_1.ParentID
ORDER BY
	d_1.ChildID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID
FROM
	Parent p

