-- ClickHouse.Driver ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	Int64Nullable
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
	Int64Nullable
)
VALUES
(
	2,
	toInt64(4)
)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Int64Nullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

