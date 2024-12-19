BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID
FROM
	(
		SELECT DISTINCT
			t1.ParentID as ParentID
		FROM
			(
				SELECT
					p.ParentID as ParentID
				FROM
					Parent p
				WHERE
					p.ParentID = 1
				LIMIT 2
			) t1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 1
LIMIT 2

