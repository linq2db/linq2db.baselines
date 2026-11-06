-- YDB Ydb
SELECT
	t1.RowNumber_2 as RowNumber,
	t1.Count_1 as Count_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.RowNumber_1 ORDER BY e.RowNumber_1 DESC, e.RowNumber DESC) as RowNumber,
			e.RowNumber_1 as RowNumber_1,
			e.RowNumber as RowNumber_2,
			COUNT(*) as Count_1
		FROM
			(
				SELECT
					g_1.DateTimeValue as RowNumber,
					DateTime::GetYear(g_1.DateTimeValue) as RowNumber_1
				FROM
					LinqDataTypes g_1
			) e
		GROUP BY
			e.RowNumber,
			e.RowNumber_1
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.RowNumber_1 DESC,
	t1.RowNumber_2 DESC

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

