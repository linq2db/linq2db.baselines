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
	q.Id,
	q.Name,
	q.ContactEmail,
	q.Enabled
FROM
	CustomerBase q
WHERE
	q.ClientType = 'Client' AND (position(q.Name, 'test') > 0 OR position(q.ContactEmail, 'test') > 0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CustomerBase

