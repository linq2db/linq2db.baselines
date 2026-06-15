-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	t2.ParentID as ParentID_1,
	t2.ChildID as ChildID,
	t4.ParentID as ParentID_2,
	t4.ChildID as ChildID_1
FROM
	Parent p
		LEFT JOIN (
			SELECT
				t1.ParentID as ParentID,
				t1.ChildID as ChildID
			FROM
				(
					SELECT
						a_Children.ParentID as ParentID,
						a_Children.ChildID as ChildID,
						ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ChildID) as rn
					FROM
						Child a_Children
				) t1
			WHERE
				t1.rn = 1
		) t2 ON p.ParentID = t2.ParentID
		LEFT JOIN (
			SELECT
				t3.ParentID as ParentID,
				t3.ChildID as ChildID
			FROM
				(
					SELECT
						a_Children_1.ParentID as ParentID,
						a_Children_1.ChildID as ChildID,
						ROW_NUMBER() OVER (PARTITION BY a_Children_1.ParentID ORDER BY a_Children_1.ChildID) as rn
					FROM
						Child a_Children_1
				) t3
			WHERE
				t3.rn = 1
		) t4 ON p.ParentID = t4.ParentID

-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID
FROM
	Parent m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

