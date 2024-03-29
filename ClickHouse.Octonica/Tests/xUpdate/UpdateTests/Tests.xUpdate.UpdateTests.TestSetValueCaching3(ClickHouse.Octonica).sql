﻿BeforeExecute
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
(toInt32(1),toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627'),toInt32(10),toInt32(6),NULL,NULL,NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value3 = toInt32(7)
WHERE
	Id = toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.Value3
FROM
	UpdateSetTest _
WHERE
	_.Id = toInt32(1)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value3 = toInt32(8)
WHERE
	Id = toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.Value3
FROM
	UpdateSetTest _
WHERE
	_.Id = toInt32(1)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS UpdateSetTest

