BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ValuesTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ValuesTable
(
	Id         Int64,
	SomeValue1 Int32,
	SomeValue2 Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

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

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	ValuesTable
UPDATE
	SomeValue1 = 8,
	SomeValue2 = 8
WHERE
	Id = toInt64(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.SomeValue1,
	t1.SomeValue2
FROM
	ValuesTable t1
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ValuesTable

