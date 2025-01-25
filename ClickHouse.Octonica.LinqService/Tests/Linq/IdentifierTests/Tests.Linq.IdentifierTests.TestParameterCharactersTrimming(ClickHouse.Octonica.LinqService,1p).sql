BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS testparams

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS testparams
(
	`1p` Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	testparams
UPDATE
	`1p` = 2
WHERE
	`1p` = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS testparams

