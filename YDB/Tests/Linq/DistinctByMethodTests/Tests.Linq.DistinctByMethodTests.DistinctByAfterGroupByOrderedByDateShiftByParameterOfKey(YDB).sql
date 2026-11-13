-- YDB Ydb
DECLARE p Int32
SET     p = -6

SELECT
	t1.Key_1 as Key_1,
	t1.Count_1 as Count_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Year_1 ORDER BY e.c1 DESC) as RowNumber,
			e.c1 as c1,
			e.Key_1 as Key_1,
			e.Count_1 as Count_1
		FROM
			(
				SELECT
					g_2.Year_1 as Year_1,
					g_2.Key_1 + DateTime::IntervalFromHours($p) as c1,
					g_2.Key_1 as Key_1,
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
	t1.c1 DESC

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

