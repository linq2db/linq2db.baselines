BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.DateTimeNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

