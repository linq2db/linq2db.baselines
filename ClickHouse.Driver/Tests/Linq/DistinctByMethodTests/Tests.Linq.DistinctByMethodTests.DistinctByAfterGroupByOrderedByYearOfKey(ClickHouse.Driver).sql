-- ClickHouse.Driver ClickHouse
SELECT
	t1.Key_1,
	t1.Count_1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Year_1 ORDER BY e.Year_1 DESC, e.Key_1 DESC)) as RowNumber,
			e.Year_1 as Year_1,
			e.Key_1 as Key_1,
			COUNT(*) as Count_1
		FROM
			(
				SELECT
					g_1.DateTimeValue as Key_1,
					toYear(g_1.DateTimeValue) as Year_1
				FROM
					LinqDataTypes g_1
			) e
		GROUP BY
			e.Key_1,
			e.Year_1
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.Year_1 DESC,
	t1.Key_1 DESC

-- ClickHouse.Driver ClickHouse
SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1

