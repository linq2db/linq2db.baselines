-- ClickHouse.Driver ClickHouse
SELECT
	t1.Key_1,
	t1.Count_1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.c1 ORDER BY e.TotalDays DESC, e.Key_1)) as RowNumber,
			e.TotalDays as TotalDays,
			e.Key_1 as Key_1,
			e.Count_1 as Count_1
		FROM
			(
				SELECT
					g_2.Year_1 > 0 as c1,
					toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(g_2.Key_1, 7)) - toUnixTimestamp64Nano(toDateTime64('2000-01-01 00:00:00.0000000', 7)), toInt64(100))) / toFloat64(864000000000) as TotalDays,
					g_2.Key_1 as Key_1,
					COUNT(*) as Count_1
				FROM
					(
						SELECT
							g_1.DateTimeValue as Key_1,
							toYear(g_1.DateTimeValue) as Year_1
						FROM
							LinqDataTypes g_1
					) g_2
				GROUP BY
					g_2.Key_1,
					g_2.Year_1
			) e
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.TotalDays DESC,
	t1.Key_1

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

