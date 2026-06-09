-- YDB Ydb

SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.Amount as Amount,
	d.Currency as Currency
FROM
	TransactionEntity m_1
		INNER JOIN LineEntity d ON m_1.Id = d.TransactionId

-- YDB Ydb

SELECT
	x.Id as Id,
	x.ValidOn as ValidOn
FROM
	TransactionEntity x
ORDER BY
	x.ValidOn

