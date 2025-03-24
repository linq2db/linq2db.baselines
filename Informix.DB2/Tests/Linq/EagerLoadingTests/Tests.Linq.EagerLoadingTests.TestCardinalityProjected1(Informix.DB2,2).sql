﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
--  Informix.DB2 Informix

SELECT
	m_1.Id,
	d.Id,
	d.FK
FROM
	(
		SELECT DISTINCT
			a_ObjectB.Id
		FROM
			EntityA e
				INNER JOIN EntityB a_ObjectB ON e.FK = a_ObjectB.Id
	) m_1
		INNER JOIN EntityD d ON m_1.Id = d.FK

BeforeExecute
DisposeTransaction
BeforeExecute
--  Informix.DB2 Informix

SELECT
	e.Id,
	a_ObjectB.Id
FROM
	EntityA e
		INNER JOIN EntityB a_ObjectB ON e.FK = a_ObjectB.Id

