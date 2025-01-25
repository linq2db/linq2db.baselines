BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS testparams

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS testparams
(
	`Test-Name` Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	testparams
UPDATE
	`Test-Name` = 2
WHERE
	`Test-Name` = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS testparams

