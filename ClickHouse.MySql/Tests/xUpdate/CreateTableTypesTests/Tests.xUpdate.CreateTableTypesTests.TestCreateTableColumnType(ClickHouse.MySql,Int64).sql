-- ClickHouse.MySql ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	Int64
)
VALUES
(
	1,
	toInt64(0)
)

-- ClickHouse.MySql ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	Int64
)
VALUES
(
	2,
	toInt64(3)
)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Int64
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

