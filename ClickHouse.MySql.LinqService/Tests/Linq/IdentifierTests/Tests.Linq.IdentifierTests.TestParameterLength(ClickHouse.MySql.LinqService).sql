BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS testparams

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS testparams
(
	col1    Int32,
	Column1 Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	testparams
UPDATE
	col1 = 2
WHERE
	Column1 = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS testparams

