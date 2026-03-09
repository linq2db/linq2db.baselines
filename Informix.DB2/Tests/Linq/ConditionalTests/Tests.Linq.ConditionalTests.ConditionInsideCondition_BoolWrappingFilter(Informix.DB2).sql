-- Informix.DB2 Informix

SELECT
	s.Value_1
FROM
	(
		SELECT
			CASE
				WHEN Mod(p.ParentID, 2) = 0 THEN CASE
					WHEN Mod(p.ParentID, 3) = 0 THEN 't'::BOOLEAN
					ELSE 'f'::BOOLEAN
				END
				WHEN Mod(p.ParentID, 4) = 0 THEN CASE
					WHEN p.ParentID > 0 THEN 't'::BOOLEAN
					ELSE 'f'::BOOLEAN
				END
				ELSE CASE
					WHEN p.ParentID < 5 THEN 't'::BOOLEAN
					ELSE 'f'::BOOLEAN
				END
			END::BOOLEAN as Value_1
		FROM
			Parent p
	) s
WHERE
	s.Value_1

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
			Parent t1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

