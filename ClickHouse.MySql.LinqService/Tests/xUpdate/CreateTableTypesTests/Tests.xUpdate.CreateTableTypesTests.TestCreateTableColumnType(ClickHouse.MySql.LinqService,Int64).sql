BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CreateTableTypes

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS CreateTableTypes
(
	Id    Int32,
	Int64 Int64
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	Int64
)
VALUES
(
	1,
	toInt64(0)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	Int64
)
VALUES
(
	2,
	toInt64(3)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Int64
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CreateTableTypes

