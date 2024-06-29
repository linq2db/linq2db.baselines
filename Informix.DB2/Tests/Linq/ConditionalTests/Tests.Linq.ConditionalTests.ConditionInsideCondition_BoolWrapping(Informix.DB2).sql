﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN Mod(p.ParentID, 2) = 0 THEN CASE
			WHEN Mod(p.ParentID, 3) = 0 THEN 't'
			ELSE 'f'
		END
		WHEN Mod(p.ParentID, 4) = 0 THEN CASE
			WHEN p.ParentID > 0 THEN 't'
			ELSE 'f'
		END
		ELSE CASE
			WHEN p.ParentID < 5 THEN 't'
			ELSE 'f'
		END
	END::BOOLEAN
FROM
	Parent p

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

