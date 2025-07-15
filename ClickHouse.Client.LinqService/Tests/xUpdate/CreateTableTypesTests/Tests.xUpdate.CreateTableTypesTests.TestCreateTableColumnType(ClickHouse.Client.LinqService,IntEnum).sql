BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	IntEnum
)
VALUES
(
	1,
	11
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	IntEnum
)
VALUES
(
	2,
	60
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.IntEnum
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

