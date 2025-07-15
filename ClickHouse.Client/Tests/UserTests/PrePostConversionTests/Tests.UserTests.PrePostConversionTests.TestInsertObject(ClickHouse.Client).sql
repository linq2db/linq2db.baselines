BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO ValuesTable
(
	Id,
	SomeValue1,
	SomeValue2
)
VALUES
(
	toInt64(1),
	2,
	2
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.SomeValue1,
	t1.SomeValue2
FROM
	ValuesTable t1
LIMIT 2

