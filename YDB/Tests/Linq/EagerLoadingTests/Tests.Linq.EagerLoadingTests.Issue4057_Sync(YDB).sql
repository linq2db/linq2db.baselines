-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID
FROM
	(
		SELECT
			x.ParentID as ParentID
		FROM
			Parent x
		WHERE
			x.ParentID = 3
		LIMIT 1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- YDB Ydb

SELECT
	x.ParentID as ParentID,
	x.Value1 as Value1
FROM
	Parent x
WHERE
	x.ParentID = 3
LIMIT 1

-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID
FROM
	(
		SELECT
			x.ParentID as ParentID
		FROM
			Parent x
		WHERE
			x.ParentID = 3
		LIMIT 1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- YDB Ydb

SELECT
	x.ParentID as ParentID,
	x.Value1 as Value1
FROM
	Parent x
WHERE
	x.ParentID = 3
LIMIT 1

-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID
FROM
	(
		SELECT
			x.ParentID as ParentID
		FROM
			Parent x
		WHERE
			x.ParentID = 3
		LIMIT 1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- YDB Ydb

SELECT
	x.ParentID as ParentID,
	x.Value1 as Value1
FROM
	Parent x
WHERE
	x.ParentID = 3
LIMIT 1

