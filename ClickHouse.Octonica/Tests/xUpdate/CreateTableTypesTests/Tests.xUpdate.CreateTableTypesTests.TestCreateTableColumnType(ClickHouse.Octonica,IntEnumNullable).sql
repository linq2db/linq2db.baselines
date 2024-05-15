BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CreateTableTypes

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS CreateTableTypes
(
	Id              Int32,
	IntEnumNullable Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	IntEnumNullable
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
	IntEnumNullable
)
VALUES
(
	2,
	60
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.IntEnumNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CreateTableTypes

