BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CustomerBase

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	q.Id,
	q.Name,
	q.ContactEmail,
	Coalesce(q.Enabled, false)
FROM
	CustomerBase q
WHERE
	q.ClientType = 'Client' AND (position(q.Name, 'test') > 0 OR position(q.ContactEmail, 'test') > 0)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CustomerBase

