BeforeExecute
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
(1,'V1','V2',NULL,'V4'),
(2,NULL,'Z2',NULL,NULL),
(3,'Z1',NULL,NULL,'Z4')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	arrayStringConcat(groupArray(t1.Value4), ' -> ')
FROM
	SampleClass t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

