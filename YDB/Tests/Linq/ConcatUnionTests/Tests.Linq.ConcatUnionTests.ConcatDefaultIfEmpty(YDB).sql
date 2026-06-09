-- YDB Ydb

SELECT
	Unwrap(CAST(0 AS Int32)) as projection__set_id__,
	t2.ParentID as ParentID,
	t2.ParentID as ParentID_1,
	t2.ChildID as ChildID
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
						ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ParentID) as rn
					FROM
						Child a_Children
				) t1
			WHERE
				t1.rn = 1
		) t2 ON p.ParentID = t2.ParentID
WHERE
	p.ParentID = 1
UNION ALL
SELECT
	Unwrap(CAST(1 AS Int32)) as projection__set_id__,
	CAST(NULL AS Int32) as ParentID,
	CAST(NULL AS Int32) as ParentID_1,
	CAST(NULL AS Int32) as ChildID
FROM
	Parent p_1
WHERE
	p_1.ParentID <> 1

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

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

