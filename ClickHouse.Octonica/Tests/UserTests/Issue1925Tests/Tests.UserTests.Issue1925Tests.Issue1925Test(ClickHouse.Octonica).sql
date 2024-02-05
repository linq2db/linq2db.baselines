BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id    Int32,
	Value Nullable(String)
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
(toInt32(1),'6'),
(toInt32(2),'x[0-9]x'),
(toInt32(3),'x[0x'),
(toInt32(4),'x[]x'),
(toInt32(5),'x]'),
(toInt32(6),']x')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id
FROM
	SampleClass r
WHERE
	endsWith(r.Value, ']')
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id
FROM
	SampleClass r
WHERE
	startsWith(r.Value, ']')
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id
FROM
	SampleClass r
WHERE
	position(r.Value, '-') > toInt32(0)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	position(r.Value, '[]') > toInt32(0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	position(r.Value, '[0') > toInt32(0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	position(r.Value, '[0') > toInt32(0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	position(r.Value, '[0-9]') > toInt32(0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	position(r.Value, '6') > toInt32(0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	r.Value LIKE '[0'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	r.Value LIKE '[0'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	r.Value LIKE '[0-9]'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	r.Value LIKE '[0-9]'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

