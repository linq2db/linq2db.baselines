BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CreateTableTypes

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS CreateTableTypes
(
	Id               Int32,
	DateTimeNullable Nullable(DateTime64(7))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	DateTimeNullable
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	DateTimeNullable
)
VALUES
(
	2,
	toDateTime64('2018-11-25 01:02:03.0000000', 7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.DateTimeNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CreateTableTypes

