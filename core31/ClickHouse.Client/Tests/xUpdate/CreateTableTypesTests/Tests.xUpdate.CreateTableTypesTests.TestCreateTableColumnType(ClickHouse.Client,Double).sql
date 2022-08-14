﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CreateTableTypes

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS CreateTableTypes
(
	Id     Int32,
	Double Float64
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	Double
)
VALUES
(
	toInt32(1),
	toFloat64(0)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	Double
)
VALUES
(
	toInt32(2),
	toFloat64(3.1400000000000001)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Double
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CreateTableTypes

