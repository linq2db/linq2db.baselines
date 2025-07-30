BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	String
)
VALUES
(
	1,
	''
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	String
)
VALUES
(
	2,
	'test max value'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.String
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

