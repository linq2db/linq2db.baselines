BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

INSERT INTO SampleClass
(
	Id,
	Value1,
	Value2,
	Value3,
	Value4
)
VALUES
(
	toInt32(1),
	'V1',
	'V2',
	NULL,
	'V4'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO SampleClass
(
	Id,
	Value1,
	Value2,
	Value3,
	Value4
)
VALUES
(
	toInt32(2),
	NULL,
	'Z2',
	NULL,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO SampleClass
(
	Id,
	Value1,
	Value2,
	Value3,
	Value4
)
VALUES
(
	toInt32(3),
	'Z1',
	NULL,
	NULL,
	'Z4'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	arrayStringConcat(groupArray(t1.Value1), ' -> ')
FROM
	SampleClass t1
GROUP BY
	t1.Id,
	t1.Value1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SampleClass

