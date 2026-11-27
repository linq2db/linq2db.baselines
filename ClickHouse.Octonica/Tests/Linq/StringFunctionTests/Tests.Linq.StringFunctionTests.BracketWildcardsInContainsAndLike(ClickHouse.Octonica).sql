-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	LikeWildcardRow r
WHERE
	endsWith(r.Value, ']')
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	LikeWildcardRow r
WHERE
	startsWith(r.Value, ']')
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	LikeWildcardRow r
WHERE
	position(r.Value, '-') > 0
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	r.Value
FROM
	LikeWildcardRow r
WHERE
	position(r.Value, '[]') > 0

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	r.Value
FROM
	LikeWildcardRow r
WHERE
	position(r.Value, '[0') > 0

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	r.Value
FROM
	LikeWildcardRow r
WHERE
	position(r.Value, '[0') > 0

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	r.Value
FROM
	LikeWildcardRow r
WHERE
	position(r.Value, '[0-9]') > 0

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	r.Value
FROM
	LikeWildcardRow r
WHERE
	position(r.Value, '6') > 0

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	r.Value
FROM
	LikeWildcardRow r
WHERE
	r.Value LIKE '[0'

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	r.Value
FROM
	LikeWildcardRow r
WHERE
	r.Value LIKE '[0'

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	r.Value
FROM
	LikeWildcardRow r
WHERE
	r.Value LIKE '[0-9]'

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	r.Value
FROM
	LikeWildcardRow r
WHERE
	r.Value LIKE '[0-9]'

