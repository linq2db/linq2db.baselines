-- ClickHouse.Driver ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	DoubleNullable
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
	DoubleNullable
)
VALUES
(
	2,
	toFloat64(4.1299999999999999)
)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.DoubleNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

