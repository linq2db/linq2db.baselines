﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id     Int32,
	Value1 Nullable(String),
	Value2 Nullable(String),
	Value3 Nullable(String),
	Value4 Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SampleClass
(
	Id,
	Value1,
	Value2,
	Value3,
	Value4
)
VALUES
(toInt32(1),'V1','V2',NULL,'V4'),
(toInt32(2),NULL,'Z2',NULL,NULL),
(toInt32(3),'Z1',NULL,NULL,'Z4')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	(
		SELECT
			COUNT(DISTINCT t1.Value1)
		FROM
			SampleClass t1
	),
	(
		SELECT
			arrayStringConcat(groupArray(t2.Value1), ' -> ')
		FROM
			SampleClass t2
	)
FROM
	SampleClass t

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

