-- YDB Ydb
SELECT
	m_1.Key_1 as Key_1,
	d.ChildID as ChildID
FROM
	(
		SELECT DISTINCT
			grp.ParentID as Key_1
		FROM
			GrandChild grp
	) m_1
		CROSS JOIN GrandChild d
WHERE
	m_1.Key_1 = d.ParentID OR m_1.Key_1 IS NULL AND d.ParentID IS NULL
ORDER BY
	m_1.Key_1

-- YDB Ydb
SELECT
	m_1.Key_1 as Key_1,
	d.ChildID as ChildID
FROM
	(
		SELECT DISTINCT
			grp.ParentID as Key_1
		FROM
			GrandChild grp
	) m_1
		CROSS JOIN GrandChild d
WHERE
	m_1.Key_1 = d.ParentID OR m_1.Key_1 IS NULL AND d.ParentID IS NULL
ORDER BY
	m_1.Key_1

-- YDB Ydb
SELECT DISTINCT
	grp.ParentID as ParentID
FROM
	GrandChild grp
ORDER BY
	ParentID

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID,
	t1.GrandChildID as GrandChildID
FROM
	GrandChild t1

