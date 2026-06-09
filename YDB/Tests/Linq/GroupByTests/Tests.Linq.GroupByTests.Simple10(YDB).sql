-- YDB Ydb

SELECT
	m_1.Key_1 as Key_1,
	d.ParentID as ParentID,
	d.ChildID as ChildID
FROM
	(
		SELECT DISTINCT
			g_1.ParentID as Key_1
		FROM
			Child g_1
	) m_1
		INNER JOIN Child d ON m_1.Key_1 = d.ParentID

-- YDB Ydb

SELECT DISTINCT
	g_1.ParentID as Key_1
FROM
	Child g_1

