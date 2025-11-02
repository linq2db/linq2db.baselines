-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.String
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

