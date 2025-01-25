BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TestTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TestTable
(
	Id Int32,
	F  String
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TestTable
(
	Id,
	F
)
VALUES
(
	2,
	'{}'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TestTable

