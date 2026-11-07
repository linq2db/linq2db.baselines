-- YDB Ydb
DECLARE baseDate Timestamp -- DateTime2
SET     baseDate = Timestamp('2000-01-01T00:00:00.000000Z')

SELECT
	t1.RowNumber_2 as RowNumber,
	t1.Count_1 as Count_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.RowNumber ORDER BY e.RowNumber_1 DESC, e.RowNumber_2) as RowNumber,
			e.RowNumber_1 as RowNumber_1,
			e.RowNumber_2 as RowNumber_2,
			e.Count_1 as Count_1
		FROM
			(
				SELECT
					g_2.Year_1 > 0 as RowNumber,
					Unwrap(CAST(Unwrap(CAST(g_2.Key_1 - $baseDate AS Int64)) * 10l AS Double)) / Double('864000000000') as RowNumber_1,
					g_2.Key_1 as RowNumber_2,
					COUNT(*) as Count_1
				FROM
					(
						SELECT
							g_1.DateTimeValue as Key_1,
							DateTime::GetYear(g_1.DateTimeValue) as Year_1
						FROM
							LinqDataTypes g_1
					) g_2
				GROUP BY
					g_2.Key_1,
					g_2.Year_1
			) e
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.RowNumber_1 DESC,
	t1.RowNumber_2

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

