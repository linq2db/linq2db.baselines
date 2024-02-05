﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SampleClass
(
	Id,
	Value
)
VALUES
(toInt32(1),toInt32(1)),
(toInt32(2),toInt32(2)),
(toInt32(3),toInt32(3))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Value
FROM
	SampleClass t
WHERE
	t.Value > toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

