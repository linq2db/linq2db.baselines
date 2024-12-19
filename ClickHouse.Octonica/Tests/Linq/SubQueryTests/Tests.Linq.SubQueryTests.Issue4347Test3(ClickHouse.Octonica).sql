BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TransactionEntity

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS TransactionEntity
(
	Id      UUID,
	ValidOn DateTime64(7),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS LineEntity

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS LineEntity
(
	Id            UUID,
	TransactionId UUID,
	Amount        Decimal128(10),
	Currency      Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Amount,
	d.Currency
FROM
	TransactionEntity m_1
		INNER JOIN LineEntity d ON m_1.Id = d.TransactionId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.ValidOn
FROM
	TransactionEntity x
ORDER BY
	x.ValidOn

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS LineEntity

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TransactionEntity

