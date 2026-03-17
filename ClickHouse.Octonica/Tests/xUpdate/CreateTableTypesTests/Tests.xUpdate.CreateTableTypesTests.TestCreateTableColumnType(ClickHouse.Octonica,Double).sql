-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Double
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

