-- ClickHouse.Driver ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	StringEnumNullable
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
	StringEnumNullable
)
VALUES
(
	2,
	'40'
)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.StringEnumNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

