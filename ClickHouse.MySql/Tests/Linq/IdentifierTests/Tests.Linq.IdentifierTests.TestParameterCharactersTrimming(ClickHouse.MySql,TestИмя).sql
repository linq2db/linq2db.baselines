BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS testparams

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS testparams
(
	`TestИмя` Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	testparams
UPDATE
	`TestИмя` = toInt32(2)
WHERE
	`TestИмя` = toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS testparams

