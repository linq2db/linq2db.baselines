-- Informix.DB2 Informix
SELECT
	CASE
		WHEN Mod(s.ParentID, 2) = 0 THEN CASE
			WHEN Mod(s.ParentID, 3) = 0 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END
		WHEN Mod(s.ParentID, 4) = 0 THEN CASE
			WHEN s.ParentID > 0 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END
		ELSE CASE
			WHEN s.ParentID < 5 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END
	END::BOOLEAN
FROM
	Parent s
WHERE
	CASE
		WHEN Mod(s.ParentID, 2) = 0 THEN CASE
			WHEN Mod(s.ParentID, 3) = 0 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END
		WHEN Mod(s.ParentID, 4) = 0 THEN CASE
			WHEN s.ParentID > 0 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END
		ELSE CASE
			WHEN s.ParentID < 5 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END
	END

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

