BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue1554FluentTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue1554FluentTable
(
	Id              Int32,
	ClaimedKeyType  String,
	ClaimedKeyTypeN Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue1554FluentTable
(
	Id,
	ClaimedKeyType,
	ClaimedKeyTypeN
)
VALUES
(
	0,
	'EC',
	'EC'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.ClaimedKeyType,
	t1.ClaimedKeyTypeN
FROM
	Issue1554FluentTable t1
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue1554FluentTable

