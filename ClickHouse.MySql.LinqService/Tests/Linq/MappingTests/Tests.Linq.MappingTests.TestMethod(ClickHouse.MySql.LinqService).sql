BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Document

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Document
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Document s

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Document

