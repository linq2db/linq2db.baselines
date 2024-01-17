BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS testparams

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS testparams
(
	`TestИмя` Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	testparams
UPDATE
	`TestИмя` = toInt32(2)
WHERE
	`TestИмя` = toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS testparams

