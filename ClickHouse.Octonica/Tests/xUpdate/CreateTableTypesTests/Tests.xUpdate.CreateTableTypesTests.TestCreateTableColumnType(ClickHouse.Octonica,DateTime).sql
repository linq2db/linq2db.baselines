BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	DateTime
)
VALUES
(
	1,
	toDateTime64('2000-01-01 00:00:00.0000000', 7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	DateTime
)
VALUES
(
	2,
	toDateTime64('2018-11-24 01:02:03.0000000', 7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.DateTime
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

