BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CreateTableTypes

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS CreateTableTypes
(
	Id      Int32,
	Boolean Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	Boolean
)
VALUES
(
	1,
	false
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	Boolean
)
VALUES
(
	2,
	true
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Boolean
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CreateTableTypes

