-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace > toInt64(900)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace >= toInt64(900)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace < toInt64(900)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace <= toInt64(900)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace >= toInt64(900) AND r.Grace <= toInt64(900)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace * toInt64(10000000) <> toInt64(9000000000) OR r.Grace IS NULL
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace > toInt64(899)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace >= toInt64(900)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace < toInt64(900)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace <= toInt64(899)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace >= toInt64(900) AND r.Grace <= toInt64(899)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace * toInt64(10000000) <> toInt64(8995000000) OR r.Grace IS NULL
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace > toInt64(900)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace >= toInt64(900)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace < toInt64(900)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace <= toInt64(900)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace = toInt64(900) AND r.Grace = toInt64(900)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace * toInt64(10000000) <> toInt64(9000000000) OR r.Grace IS NULL
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace IS NULL
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace IS NOT NULL
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace > toInt64(900)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace >= toInt64(901)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace < toInt64(901)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace <= toInt64(900)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace = toInt64(901) AND r.Grace = toInt64(900)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace * toInt64(10000000) <> toInt64(9005000000) OR r.Grace IS NULL
ORDER BY
	r.Id

