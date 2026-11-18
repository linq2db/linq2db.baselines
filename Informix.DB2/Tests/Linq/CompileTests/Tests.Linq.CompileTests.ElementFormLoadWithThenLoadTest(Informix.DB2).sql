-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT
	m_1.ParentID,
	m_1.ChildID,
	m_1.ParentID_1,
	d_1.ParentID,
	d_1.ChildID,
	d_1.GrandChildID
FROM
	(
		SELECT DISTINCT
			d.ParentID,
			d.ChildID,
			t1.ParentID as ParentID_1
		FROM
			(
				SELECT FIRST 1
					p.ParentID
				FROM
					Parent p
				WHERE
					p.ParentID = @p
			) t1
				INNER JOIN Child d ON t1.ParentID = d.ParentID
	) m_1
		INNER JOIN GrandChild d_1 ON m_1.ParentID = d_1.ParentID AND m_1.ChildID = d_1.ChildID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID
FROM
	(
		SELECT FIRST 1
			p.ParentID
		FROM
			Parent p
		WHERE
			p.ParentID = @p
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT FIRST 1
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = @p

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT
	m_1.ParentID,
	m_1.ChildID,
	m_1.ParentID_1,
	d_1.ParentID,
	d_1.ChildID,
	d_1.GrandChildID
FROM
	(
		SELECT DISTINCT
			d.ParentID,
			d.ChildID,
			t1.ParentID as ParentID_1
		FROM
			(
				SELECT FIRST 1
					p.ParentID
				FROM
					Parent p
				WHERE
					p.ParentID = @p
			) t1
				INNER JOIN Child d ON t1.ParentID = d.ParentID
	) m_1
		INNER JOIN GrandChild d_1 ON m_1.ParentID = d_1.ParentID AND m_1.ChildID = d_1.ChildID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID
FROM
	(
		SELECT FIRST 1
			p.ParentID
		FROM
			Parent p
		WHERE
			p.ParentID = @p
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT FIRST 1
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = @p

