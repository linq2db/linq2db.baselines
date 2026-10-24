-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	ComputedDecimalRow r
WHERE
	Abs(r.Fine) = Decimal('1.000000000005', 18, 12)

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	ComputedDecimalRow r
WHERE
	CASE
		WHEN r.Id > 0 THEN r.Fine
		ELSE -r.Fine
	END = Decimal('1.000000000005', 18, 12)

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			ComputedDecimalRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.Fine) = Decimal('1.000000000005', 18, 12)
	) t1

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	ComputedDecimalRow r
WHERE
	Abs(r.Wide) = Decimal('12345678901234.50', 18, 2)

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	ComputedDecimalRow r
WHERE
	CASE
		WHEN r.Id > 0 THEN r.Wide
		ELSE -r.Wide
	END = Decimal('12345678901234.50', 18, 2)

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			ComputedDecimalRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.Wide) = Decimal('12345678901234.50', 18, 2)
	) t1

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	ComputedDecimalRow r
WHERE
	Abs(r.Whole) = Decimal('5.00', 18, 0)

