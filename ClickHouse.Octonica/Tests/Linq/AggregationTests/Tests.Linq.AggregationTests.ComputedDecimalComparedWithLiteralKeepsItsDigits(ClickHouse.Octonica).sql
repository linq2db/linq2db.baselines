-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	ComputedDecimalRow r
WHERE
	Abs(r.Fine) = toDecimal64('1.000000000005', 12)

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	ComputedDecimalRow r
WHERE
	CASE
		WHEN r.Id > 0 THEN r.Fine
		ELSE negate(r.Fine)
	END = toDecimal64('1.000000000005', 12)

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			ComputedDecimalRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.Fine) = toDecimal64('1.000000000005', 12)
	) t1

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	ComputedDecimalRow r
WHERE
	Abs(r.Wide) = toDecimal64('12345678901234.50', 2)

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	ComputedDecimalRow r
WHERE
	CASE
		WHEN r.Id > 0 THEN r.Wide
		ELSE negate(r.Wide)
	END = toDecimal64('12345678901234.50', 2)

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			ComputedDecimalRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.Wide) = toDecimal64('12345678901234.50', 2)
	) t1

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	ComputedDecimalRow r
WHERE
	Abs(r.Whole) = toDecimal64('5.00', 0)

