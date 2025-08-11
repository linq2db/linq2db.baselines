BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	String
)
VALUES
(
	1,
	''
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	String
)
VALUES
(
	2,
	'test 10'
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.String
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

