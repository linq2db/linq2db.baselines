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
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID,
	d.GrandChildID as GrandChildID
FROM
	Parent m_1
		INNER JOIN GrandChild d ON m_1.ParentID = d.ParentID
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
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID,
	d.GrandChildID as GrandChildID
FROM
	Parent m_1
		INNER JOIN GrandChild d ON m_1.ParentID = d.ParentID
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

