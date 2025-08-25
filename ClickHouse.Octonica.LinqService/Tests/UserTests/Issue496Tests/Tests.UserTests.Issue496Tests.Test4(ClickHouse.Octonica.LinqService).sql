BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	m_1.ParentID,
	d.ChildID,
	d.ParentID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
	) m_1
		INNER JOIN Child d ON toInt64(m_1.ParentID) = d.ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	p.ParentID
FROM
	Parent p

