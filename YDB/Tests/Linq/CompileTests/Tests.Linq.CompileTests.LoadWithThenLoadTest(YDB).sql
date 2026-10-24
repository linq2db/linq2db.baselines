-- YDB Ydb
DECLARE $p Int32
SET     $p = 1

SELECT
	m_1.ParentID as ParentID,
	m_1.ChildID as ChildID,
	m_1.ParentID_1 as ParentID_1,
	d_1.ParentID as ParentID_2,
	d_1.ChildID as ChildID_1,
	d_1.GrandChildID as GrandChildID
FROM
	(
		SELECT DISTINCT
			d.ParentID as ParentID,
			d.ChildID as ChildID,
			p.ParentID as ParentID_1
		FROM
			Parent p
				INNER JOIN Child d ON p.ParentID = d.ParentID
		WHERE
			p.ParentID = $p
	) m_1
		INNER JOIN GrandChild d_1 ON m_1.ParentID = d_1.ParentID AND m_1.ChildID = d_1.ChildID

-- YDB Ydb
DECLARE $p Int32
SET     $p = 1

SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID
FROM
	Parent m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID
WHERE
	m_1.ParentID = $p

-- YDB Ydb
DECLARE $p Int32
SET     $p = 1

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID = $p

-- YDB Ydb
DECLARE $p Int32
SET     $p = 2

SELECT
	m_1.ParentID as ParentID,
	m_1.ChildID as ChildID,
	m_1.ParentID_1 as ParentID_1,
	d_1.ParentID as ParentID_2,
	d_1.ChildID as ChildID_1,
	d_1.GrandChildID as GrandChildID
FROM
	(
		SELECT DISTINCT
			d.ParentID as ParentID,
			d.ChildID as ChildID,
			p.ParentID as ParentID_1
		FROM
			Parent p
				INNER JOIN Child d ON p.ParentID = d.ParentID
		WHERE
			p.ParentID = $p
	) m_1
		INNER JOIN GrandChild d_1 ON m_1.ParentID = d_1.ParentID AND m_1.ChildID = d_1.ChildID

-- YDB Ydb
DECLARE $p Int32
SET     $p = 2

SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID
FROM
	Parent m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID
WHERE
	m_1.ParentID = $p

-- YDB Ydb
DECLARE $p Int32
SET     $p = 2

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID = $p

