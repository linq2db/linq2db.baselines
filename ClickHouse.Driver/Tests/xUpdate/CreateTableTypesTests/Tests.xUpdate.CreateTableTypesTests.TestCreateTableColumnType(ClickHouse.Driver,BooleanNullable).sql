BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	BooleanNullable
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	BooleanNullable
)
VALUES
(
	2,
	true
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.BooleanNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

