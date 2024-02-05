BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CustomerBase

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	cb.Id,
	cb.Name,
	cb.ContactEmail,
	Coalesce(cb.Enabled, false)
FROM
	CustomerBase cb
WHERE
	cb.ClientType = 'Client'

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CustomerBase

