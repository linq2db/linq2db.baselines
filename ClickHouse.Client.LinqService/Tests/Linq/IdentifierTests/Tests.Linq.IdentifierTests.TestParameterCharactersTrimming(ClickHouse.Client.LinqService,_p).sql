BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS testparams

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS testparams
(
	_p Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	testparams
UPDATE
	_p = 2
WHERE
	_p = 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS testparams

