BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	String
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	String
)
VALUES
(
	2,
	'test 10 n'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.String
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

