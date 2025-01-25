BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS UpdateSetTest

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value4 = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11')
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Value4
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value4 = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Value4
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS UpdateSetTest

