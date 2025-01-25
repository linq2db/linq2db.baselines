BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix

SELECT
	m_1.ParentID,
	d.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID
		FROM
			Parent p
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ParentID
FROM
	Parent p
ORDER BY
	p.ParentID

