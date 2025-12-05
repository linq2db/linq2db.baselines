-- ClickHouse.Driver ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	BooleanNullable
)
VALUES
(
	1,
	NULL
)

-- ClickHouse.Driver ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	BooleanNullable
)
VALUES
(
	2,
	true
)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.BooleanNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

