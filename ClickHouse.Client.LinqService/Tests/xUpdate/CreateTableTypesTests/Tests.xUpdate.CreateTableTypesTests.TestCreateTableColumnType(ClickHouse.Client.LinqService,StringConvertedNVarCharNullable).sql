BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.StringConverted
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

