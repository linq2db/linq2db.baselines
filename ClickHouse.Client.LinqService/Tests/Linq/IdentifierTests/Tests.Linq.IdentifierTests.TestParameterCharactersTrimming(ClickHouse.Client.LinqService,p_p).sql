BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS testparams

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS testparams
(
	p_p Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	testparams
UPDATE
	p_p = 2
WHERE
	p_p = 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS testparams

