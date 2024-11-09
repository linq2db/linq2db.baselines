BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TransactionEntity

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TransactionEntity
(
	Id      UUID,
	ValidOn DateTime64(7),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS LineEntity

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Amount,
	d.Currency
FROM
	(
		SELECT DISTINCT
			x.Id as Id
		FROM
			TransactionEntity x
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					(
						SELECT
							a_Lines.Currency as Currency
						FROM
							LineEntity a_Lines
						WHERE
							x.Id = a_Lines.TransactionId
						INTERSECT DISTINCT
						SELECT
							t1.item as Currency
						FROM
							(
								SELECT 'A' AS item
								UNION ALL
								SELECT 'B') t1
					) t2
			)
	) m_1
		INNER JOIN LineEntity d ON m_1.Id = d.TransactionId

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS LineEntity

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TransactionEntity

