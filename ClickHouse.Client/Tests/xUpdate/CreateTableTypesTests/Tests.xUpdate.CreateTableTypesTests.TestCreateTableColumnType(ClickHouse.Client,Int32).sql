BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CreateTableTypes

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS CreateTableTypes
(
	Id    Int32,
	Int32 Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	Int32
)
VALUES
(
	1,
	0
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	Int32
)
VALUES
(
	2,
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Int32
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CreateTableTypes

