-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 1

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
			p.ParentID = @p AND CURRENT > TO_DATE('2020-02-29', '%Y-%m-%d')
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = @p AND CURRENT > TO_DATE('2020-02-29', '%Y-%m-%d')

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2

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
			p.ParentID = @p AND CURRENT > TO_DATE('2020-02-29', '%Y-%m-%d')
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = @p AND CURRENT > TO_DATE('2020-02-29', '%Y-%m-%d')

