﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	m_1.Id,
	d.Id,
	d.Amount,
	d.Currency
FROM
	TransactionEntity m_1
		INNER JOIN LineEntity d ON m_1.Id = d.TransactionId

BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Id,
	x.ValidOn
FROM
	TransactionEntity x
ORDER BY
	x.ValidOn

