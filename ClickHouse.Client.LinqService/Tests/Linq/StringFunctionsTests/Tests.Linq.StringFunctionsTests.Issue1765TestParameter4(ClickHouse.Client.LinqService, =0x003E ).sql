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
(
	toInt32(1),
	'V1',
	'V2',
	NULL,
	'V4'
)

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
(
	toInt32(2),
	NULL,
	'Z2',
	NULL,
	NULL
)

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
(
	toInt32(3),
	'Z1',
	NULL,
	NULL,
	'Z4'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	maxOrNull(t1.Value4),
	arrayStringConcat(groupArray(t1.Value4), ' => ')
FROM
	SampleClass t1
GROUP BY
	t1.Id,
	t1.Value4
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleClass

