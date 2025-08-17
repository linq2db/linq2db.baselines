BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
			p.ParentID = 3
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 3

