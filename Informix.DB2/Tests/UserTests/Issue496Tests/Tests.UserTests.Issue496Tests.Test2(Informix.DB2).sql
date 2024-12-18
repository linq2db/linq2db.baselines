﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix

SELECT
	m_1.ParentID,
	d.ChildID,
	d.ParentID
FROM
	(
		SELECT DISTINCT
			p.ParentID
		FROM
			Parent p
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID AND d.ParentID IS NOT NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ParentID
FROM
	Parent p

