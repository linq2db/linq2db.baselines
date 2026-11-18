-- YDB Ydb
SELECT
	m_1.ParentID as ParentID,
	m_1.ParentID as ParentID_1,
	m_1.Value1 as Value1
FROM
	Parent m_1
WHERE
	m_1.ParentID < 4
UNION ALL
SELECT
	p.ParentID as ParentID,
	p.ParentID as ParentID_1,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID >= 4

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

