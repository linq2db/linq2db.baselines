BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue1554Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue1554Table
(
	Id              Int32,
	ClaimedKeyType  String,
	ClaimedKeyTypeN Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue1554Table
(
	Id,
	ClaimedKeyType,
	ClaimedKeyTypeN
)
VALUES
(
	0,
	'RSA',
	'RSA'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Issue1554Table
UPDATE
	ClaimedKeyType = 'EC',
	ClaimedKeyTypeN = 'EC'
WHERE
	Id = 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.ClaimedKeyType,
	t1.ClaimedKeyTypeN
FROM
	Issue1554Table t1
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue1554Table

