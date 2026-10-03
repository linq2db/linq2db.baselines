-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	LinqDataTypes t1

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	LinqDataTypes p
WHERE
	makeDateTime(2010, 1, 1, 10, 0, p.ID % 1) < toDateTime64('2010-01-01 10:00:00.5000000', 7)

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	LinqDataTypes p
WHERE
	makeDateTime(2010, 1, 1, 10, 0, p.ID % 1) >= toDateTime64('2010-01-01 10:00:00.5000000', 7)

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	LinqDataTypes p
WHERE
	makeDateTime(2010, 1, 1, 10, 0, p.ID % 1) = toDateTime64('2010-01-01 10:00:00.5000000', 7)

