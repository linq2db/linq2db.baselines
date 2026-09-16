-- Informix.DB2 Informix
SELECT
	m_1.ParentID,
	m_1.Key_1,
	d_2.ChildID
FROM
	(
		SELECT DISTINCT
			d_1.Key_1,
			t1.ParentID
		FROM
			(
				SELECT DISTINCT
					c_1.ParentID
				FROM
					Parent c_1
			) t1
				INNER JOIN (
					SELECT DISTINCT
						d.ParentID as Key_1
					FROM
						Child d
				) d_1 ON t1.ParentID = d_1.Key_1
	) m_1
		INNER JOIN Child d_2 ON m_1.ParentID = d_2.ParentID AND m_1.Key_1 = d_2.ParentID

-- Informix.DB2 Informix
SELECT
	m_1.ParentID,
	d_1.Key_1
FROM
	(
		SELECT DISTINCT
			c_1.ParentID
		FROM
			Parent c_1
	) m_1
		INNER JOIN (
			SELECT DISTINCT
				d.ParentID as Key_1
			FROM
				Child d
		) d_1 ON m_1.ParentID = d_1.Key_1

-- Informix.DB2 Informix
SELECT
	c_1.ParentID
FROM
	Parent c_1

