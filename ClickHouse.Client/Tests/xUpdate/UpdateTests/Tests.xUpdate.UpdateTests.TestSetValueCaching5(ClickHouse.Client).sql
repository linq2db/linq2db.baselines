BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS UpdateSetTest

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS UpdateSetTest
(
	Id     Int32,
	Value1 UUID,
	Value2 Int32,
	Value3 Int32,
	Value4 Nullable(UUID),
	Value5 Nullable(Int32),
	Value6 Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO UpdateSetTest
(
	Id,
	Value1,
	Value2,
	Value3,
	Value4,
	Value5,
	Value6
)
VALUES
(1,toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627'),10,6,NULL,NULL,NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value5 = 11
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Value5
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value5 = 12
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Value5
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS UpdateSetTest

