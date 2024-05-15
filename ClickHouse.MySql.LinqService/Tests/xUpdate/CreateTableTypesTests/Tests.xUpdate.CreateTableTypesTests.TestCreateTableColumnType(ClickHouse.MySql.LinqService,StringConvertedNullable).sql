BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CreateTableTypes

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS CreateTableTypes
(
	Id              Int32,
	StringConverted Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.StringConverted
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CreateTableTypes

