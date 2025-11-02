-- ClickHouse.MySql ClickHouse

SELECT
	r.Id
FROM
	SampleClass r
WHERE
	endsWith(r.Value, ']')
LIMIT 2

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id
FROM
	SampleClass r
WHERE
	startsWith(r.Value, ']')
LIMIT 2

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id
FROM
	SampleClass r
WHERE
	position(r.Value, '-') > 0
LIMIT 2

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	position(r.Value, '[]') > 0

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	position(r.Value, '[0') > 0

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	position(r.Value, '[0') > 0

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	position(r.Value, '[0-9]') > 0

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	position(r.Value, '6') > 0

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	r.Value LIKE '[0'

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	r.Value LIKE '[0'

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	r.Value LIKE '[0-9]'

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	SampleClass r
WHERE
	r.Value LIKE '[0-9]'

