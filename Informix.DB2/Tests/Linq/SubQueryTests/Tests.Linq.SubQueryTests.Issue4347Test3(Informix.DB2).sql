BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TransactionEntity

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TransactionEntity
(
	Id      VARCHAR(36)               NOT NULL,
	ValidOn datetime year to fraction NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS LineEntity

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS LineEntity
(
	Id            VARCHAR(36)   NOT NULL,
	TransactionId VARCHAR(36)   NOT NULL,
	Amount        Decimal       NOT NULL,
	Currency      NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
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
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Id,
	x.ValidOn
FROM
	TransactionEntity x
ORDER BY
	x.ValidOn

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS LineEntity

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TransactionEntity

