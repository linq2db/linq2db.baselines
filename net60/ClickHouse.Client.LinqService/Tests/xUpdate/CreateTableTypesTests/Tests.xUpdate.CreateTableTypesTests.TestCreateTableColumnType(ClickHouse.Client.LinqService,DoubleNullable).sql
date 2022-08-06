﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CreateTableTypes

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS CreateTableTypes
(
	Id             Int32,
	DoubleNullable Nullable(Float64)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	DoubleNullable
)
VALUES
(
	toInt32(1),
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	DoubleNullable
)
VALUES
(
	toInt32(2),
	toFloat64(4.1299999999999999)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.DoubleNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CreateTableTypes

