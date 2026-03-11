-- ClickHouse.MySql ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	StringEnum
)
VALUES
(
	1,
	'14'
)

-- ClickHouse.MySql ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	StringEnum
)
VALUES
(
	2,
	'4'
)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.StringEnum
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

