-- YDB Ydb
SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID,
	t3.ParentID as ParentID_2,
	t3.Value1 as Value1
FROM
	(
		SELECT DISTINCT
			t1.ParentID as ParentID
		FROM
			Parent t1
	) m_1
		INNER JOIN Child d ON d.ParentID = m_1.ParentID
		LEFT JOIN (
			SELECT
				a_LinkedParent.ChildID as ChildID,
				p.ParentID as ParentID,
				p.Value1 as Value1
			FROM
				(
					SELECT
						t2.ParentID as ParentID,
						t2.ChildID as ChildID
					FROM
						(
							SELECT
								g_1.ParentID as ParentID,
								ROW_NUMBER() OVER (PARTITION BY g_1.ChildID ORDER BY g_1.ChildID) as rn,
								g_1.ChildID as ChildID
							FROM
								GrandChild g_1
						) t2
					WHERE
						t2.rn = 1
				) a_LinkedParent
					INNER JOIN Parent p ON a_LinkedParent.ParentID = p.ParentID
		) t3 ON t3.ChildID = d.ChildID
ORDER BY
	d.ChildID

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

