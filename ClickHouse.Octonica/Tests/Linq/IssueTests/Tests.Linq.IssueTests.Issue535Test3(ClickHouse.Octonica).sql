BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CustomerBase

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS CustomerBase
(
	Id           Int32,
	ClientType   FixedString(6),
	Name         Nullable(String),
	ContactEmail Nullable(String),
	Enabled      Nullable(Bool),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	cb.Id,
	cb.Name,
	cb.ContactEmail,
	cb.Enabled
FROM
	CustomerBase cb
WHERE
	cb.ClientType = 'Client'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CustomerBase

