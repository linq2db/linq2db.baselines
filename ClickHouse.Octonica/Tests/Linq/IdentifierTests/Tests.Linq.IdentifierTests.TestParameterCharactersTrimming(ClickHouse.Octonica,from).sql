BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS testparams

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS testparams
(
	from Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	testparams
UPDATE
	from = 2
WHERE
	from = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS testparams

