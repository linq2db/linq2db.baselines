-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	ComputedDecimalRow r
WHERE
	Abs(r.Fine) IN (toDecimal64('1.000000000005', 12))

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	ComputedDecimalRow r
WHERE
	Abs(r.Fine) IN (toDecimal64('1.000000000005', 12))

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	ComputedDecimalRow r
WHERE
	Abs(r.Wide) IN (toDecimal64('12345678901234.50', 2))

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	ComputedDecimalRow r
WHERE
	Abs(r.Wide) IN (toDecimal64('12345678901234.50', 2))

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	ComputedDecimalRow r
WHERE
	roundBankers(r.Fine, 2) = toDecimal64('1.004', 12)

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	ComputedDecimalRow r
WHERE
	roundBankers(r.Fine, 2) IN (toDecimal64('1.004', 12))

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	ComputedDecimalRow r
WHERE
	roundBankers(r.Fine, 2) IN (toDecimal64('1.004', 12))

