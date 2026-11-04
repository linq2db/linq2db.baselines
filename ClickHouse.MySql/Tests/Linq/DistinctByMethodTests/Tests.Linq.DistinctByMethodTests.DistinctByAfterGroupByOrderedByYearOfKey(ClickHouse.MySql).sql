-- ClickHouse.MySql ClickHouse
SELECT
	t1.RowNumber_2,
	t1.Count_1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.RowNumber_1 ORDER BY e.RowNumber_1 DESC, e.RowNumber DESC)) as RowNumber,
			e.RowNumber_1 as RowNumber_1,
			e.RowNumber as RowNumber_2,
			COUNT(*) as Count_1
		FROM
			(
				SELECT
					g_1.DateTimeValue as RowNumber,
					toYear(g_1.DateTimeValue) as RowNumber_1
				FROM
					LinqDataTypes g_1
			) e
		GROUP BY
			e.RowNumber,
			e.RowNumber_1
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.RowNumber_1 DESC,
	t1.RowNumber_2 DESC

-- ClickHouse.MySql ClickHouse
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

