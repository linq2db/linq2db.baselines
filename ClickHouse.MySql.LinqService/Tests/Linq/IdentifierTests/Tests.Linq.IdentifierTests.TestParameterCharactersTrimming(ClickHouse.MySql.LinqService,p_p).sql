BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS testparams

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS testparams
(
	p_p Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	testparams
UPDATE
	p_p = 2
WHERE
	p_p = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS testparams

