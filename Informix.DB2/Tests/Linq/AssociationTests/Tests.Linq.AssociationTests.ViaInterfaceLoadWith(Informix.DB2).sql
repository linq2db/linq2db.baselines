BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix

SELECT
	m_1.Id,
	d.Id,
	d.MainEntityId
FROM
	MainEntity m_1
		INNER JOIN SubEntity d ON m_1.Id = d.MainEntityId

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id
FROM
	MainEntity t1

