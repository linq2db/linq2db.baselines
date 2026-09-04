-- DuckDB
DECLARE $p  -- Int32
SET     $p = 1

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
		WHERE
			p.ParentID = $p AND now() > '2020-02-29 00:00:00.000000'::TIMESTAMP
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 1

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = $p AND now() > '2020-02-29 00:00:00.000000'::TIMESTAMP

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 2

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
		WHERE
			p.ParentID = $p AND now() > '2020-02-29 00:00:00.000000'::TIMESTAMP
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 2

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = $p AND now() > '2020-02-29 00:00:00.000000'::TIMESTAMP

