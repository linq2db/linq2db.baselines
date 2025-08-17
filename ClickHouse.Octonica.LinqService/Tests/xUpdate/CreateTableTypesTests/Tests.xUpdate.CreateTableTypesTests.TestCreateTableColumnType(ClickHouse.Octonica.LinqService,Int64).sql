BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Int64
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

