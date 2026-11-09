-- DuckDB
SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID
		FROM
			Parent p
	) m_1
		INNER JOIN Child d ON d.ParentID = m_1.ParentID

-- DuckDB
SELECT
	p.ParentID
FROM
	Parent p

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- DuckDB
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

