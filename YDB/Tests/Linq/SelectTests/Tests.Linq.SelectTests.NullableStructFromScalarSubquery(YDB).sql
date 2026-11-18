-- YDB Ydb
SELECT
	m_1.ParentID as ParentID,
	t2.ChildID as ChildID,
	t2.ParentID as ParentID_1
FROM
	Parent m_1
		LEFT JOIN (
			SELECT
				t1.ChildID as ChildID,
				t1.ParentID as ParentID
			FROM
				(
					SELECT
						c_1.ChildID as ChildID,
						c_1.ParentID as ParentID,
						ROW_NUMBER() OVER (PARTITION BY c_1.ParentID ORDER BY c_1.ChildID) as rn
					FROM
						Child c_1
				) t1
			WHERE
				t1.rn = 1
		) t2 ON t2.ParentID = m_1.ParentID

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

