-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
				INNER JOIN (
					SELECT DISTINCT
						c_1.ParentID as Key_1
					FROM
						Child c_1
				) c_2 ON p.ParentID = c_2.Key_1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1,
	c_2.Value_1 as Value_1
FROM
	Parent p
		INNER JOIN (
			SELECT
				c_1.ParentID as Key_1,
				COUNT(*) as Value_1
			FROM
				Child c_1
			GROUP BY
				c_1.ParentID
		) c_2 ON p.ParentID = c_2.Key_1
ORDER BY
	c_2.Key_1

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

