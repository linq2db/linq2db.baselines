BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	Boolean
)
VALUES
(
	1,
	false
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	Boolean
)
VALUES
(
	2,
	true
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Boolean
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

