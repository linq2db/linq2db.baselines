BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	arrayStringConcat(groupArray(g_1.Value1), ' -> ')
FROM
	SampleClass g_1
GROUP BY
	g_1.Id,
	g_1.Value1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleClass

