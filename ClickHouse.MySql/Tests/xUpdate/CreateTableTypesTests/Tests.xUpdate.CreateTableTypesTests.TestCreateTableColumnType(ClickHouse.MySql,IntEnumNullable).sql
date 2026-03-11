-- ClickHouse.MySql ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	IntEnumNullable
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
	IntEnumNullable
)
VALUES
(
	2,
	60
)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.IntEnumNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

