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
(1,'6'),
(2,'x[0-9]x'),
(3,'x[0x'),
(4,'x[]x'),
(5,'x]'),
(6,']x')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id
FROM
	SampleClass r
WHERE
	endsWith(r.Value, ']') = true
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id
FROM
	SampleClass r
WHERE
	startsWith(r.Value, ']') = true
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id
FROM
	SampleClass r
WHERE
	position(r.Value, '-') > 0
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	position(r.Value, '[]') > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	position(r.Value, '[0') > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	position(r.Value, '[0') > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	position(r.Value, '[0-9]') > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	position(r.Value, '6') > 0

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

