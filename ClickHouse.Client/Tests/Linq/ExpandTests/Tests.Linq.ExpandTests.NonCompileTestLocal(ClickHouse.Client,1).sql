﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO SampleClass
(
	Id,
	Value
)
VALUES
(1,1),
(2,2),
(3,3)

SELECT
	t.Id,
	t.Value
FROM
	SampleClass t,
	SampleClass t2
WHERE
	t2.Value > 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Value
FROM
	SampleClass t,
	SampleClass t2
WHERE
	t2.Value > 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleClass

