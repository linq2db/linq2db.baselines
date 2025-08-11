BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	Int32Nullable
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
	Int32Nullable
)
VALUES
(
	2,
	2
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Int32Nullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

