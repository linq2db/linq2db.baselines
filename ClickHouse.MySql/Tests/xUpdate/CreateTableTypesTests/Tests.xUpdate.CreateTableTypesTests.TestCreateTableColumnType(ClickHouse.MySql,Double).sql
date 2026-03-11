-- ClickHouse.MySql ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	Double
)
VALUES
(
	1,
	toFloat64(0)
)

-- ClickHouse.MySql ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	Double
)
VALUES
(
	2,
	toFloat64(3.1400000000000001)
)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Double
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

