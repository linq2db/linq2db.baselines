﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue1554Table

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

INSERT INTO Issue1554Table
(
	Id,
	ClaimedKeyType,
	ClaimedKeyTypeN
)
VALUES
(
	toInt32(0),
	'RSA',
	'RSA'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Issue1554Table
UPDATE
	ClaimedKeyType = 'EC',
	ClaimedKeyTypeN = 'EC'
WHERE
	Id = toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.ClaimedKeyType,
	t1.ClaimedKeyTypeN
FROM
	Issue1554Table t1
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue1554Table

