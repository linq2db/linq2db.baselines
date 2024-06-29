BeforeExecute
-- Informix.DB2 Informix

SELECT
	s_1.Value_1
FROM
	(
		SELECT
			CASE
				WHEN Mod(s.ParentID, 2) = 0 THEN CASE
					WHEN Mod(s.ParentID, 3) = 0 THEN 't'
					ELSE 'f'
				END
				WHEN Mod(s.ParentID, 4) = 0 THEN CASE
					WHEN s.ParentID > 0 THEN 't'
					ELSE 'f'
				END
				ELSE CASE
					WHEN s.ParentID < 5 THEN 't'
					ELSE 'f'
				END
			END::BOOLEAN as Value_1
		FROM
			Parent s
	) s_1
WHERE
	s_1.Value_1 = 't'

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
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

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

