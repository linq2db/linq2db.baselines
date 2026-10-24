-- ClickHouse.Octonica ClickHouse
SELECT
	m_1.ParentID,
	m_1.Value1
FROM
	Parent m_1
WHERE
	m_1.ParentID < 4
UNION ALL
SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID >= 4

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

