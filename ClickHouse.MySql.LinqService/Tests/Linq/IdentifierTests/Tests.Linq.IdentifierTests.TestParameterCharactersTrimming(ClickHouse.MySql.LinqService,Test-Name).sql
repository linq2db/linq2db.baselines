BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS testparams

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS testparams
(
	`Test-Name` Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	testparams
UPDATE
	`Test-Name` = 2
WHERE
	`Test-Name` = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS testparams

