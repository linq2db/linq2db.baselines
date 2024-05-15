BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CreateTableTypes

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS CreateTableTypes
(
	StringConverted String,
	Id              Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	StringConverted
)
VALUES
(
	1,
	'null'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	StringConverted
)
VALUES
(
	2,
	'[{"Item1":1,"Item2":"one"},{"Item1":2,"Item2":"two"}]'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.StringConverted
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CreateTableTypes

