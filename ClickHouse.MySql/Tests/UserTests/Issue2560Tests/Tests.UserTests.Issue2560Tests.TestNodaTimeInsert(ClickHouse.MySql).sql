BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DataClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS DataClass
(
	Id    Int32,
	Value DateTime
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO DataClass
(
	Id,
	Value
)
VALUES
(
	0,
	toDateTime('2020-02-29 17:54:55')
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DataClass

