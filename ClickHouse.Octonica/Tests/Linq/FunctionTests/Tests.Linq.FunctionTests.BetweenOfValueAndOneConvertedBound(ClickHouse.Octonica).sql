-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	BetweenConvertedRow r
WHERE
	r.Id <= 2 AND toInt64(42) NOT BETWEEN r.Elapsed AND toInt64(10)
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	BetweenConvertedRow r
WHERE
	toInt64(150) NOT BETWEEN r.Elapsed AND toInt64(130)
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	BetweenConvertedRow r
WHERE
	'00042' BETWEEN '00005' AND r.High
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	BetweenConvertedRow r
WHERE
	NULL BETWEEN r.Elapsed AND toInt64(130)

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	BetweenConvertedRow r
WHERE
	NULL NOT BETWEEN r.Elapsed AND toInt64(130)

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	BetweenConvertedRow r
WHERE
	NULL NOT BETWEEN r.Elapsed AND toInt64(130)

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	BetweenConvertedRow r
WHERE
	toInt64(42) BETWEEN toInt64(10) AND r.Elapsed
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	BetweenConvertedRow r
WHERE
	'00042' BETWEEN r.Low AND '00500'
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	BetweenConvertedRow r
WHERE
	'00042' BETWEEN '00005' AND r.High
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	BetweenConvertedRow r
WHERE
	'00042' NOT BETWEEN '00005' AND r.High
ORDER BY
	r.Id

