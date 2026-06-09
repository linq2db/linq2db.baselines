-- YDB Ydb

SELECT
	s.Value_1 as Value_1
FROM
	(
		SELECT
			CASE
				WHEN p.ParentID % 2 = 0 THEN p.ParentID % 3 = 0
				WHEN p.ParentID % 4 = 0 THEN p.ParentID > 0
				ELSE p.ParentID < 5
			END as Value_1
		FROM
			Parent p
	) s
WHERE
	s.Value_1

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

