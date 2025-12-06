-- Informix.DB2 Informix

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 1

-- Informix.DB2 Informix

SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID
FROM
	(
		SELECT DISTINCT
			t1.ParentID
		FROM
			(
				SELECT FIRST 2
					p.ParentID
				FROM
					Parent p
				WHERE
					p.ParentID = 1
			) t1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- Informix.DB2 Informix

SELECT FIRST 2
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 1

