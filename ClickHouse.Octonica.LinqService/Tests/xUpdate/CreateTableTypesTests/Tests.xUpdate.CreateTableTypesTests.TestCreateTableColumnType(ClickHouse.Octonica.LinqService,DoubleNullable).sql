BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.DoubleNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

