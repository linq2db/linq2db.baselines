-- ClickHouse.Driver ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	DateTimeNullable
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
	DateTimeNullable
)
VALUES
(
	2,
	toDateTime64('2018-11-25 01:02:03.0000000', 7)
)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.DateTimeNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

