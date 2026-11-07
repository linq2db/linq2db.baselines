-- Informix.DB2 Informix
SELECT
	t1.RowNumber_1,
	t1.Count_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY CASE
				WHEN e.Year_1 > 0 THEN 't'::BOOLEAN
				ELSE 'f'::BOOLEAN
			END ORDER BY e.RowNumber DESC, e.RowNumber) as RowNumber,
			e.RowNumber as RowNumber_1,
			COUNT(*) as Count_1
		FROM
			(
				SELECT
					g_1.DateTimeValue as RowNumber,
					Year(g_1.DateTimeValue) as Year_1
				FROM
					LinqDataTypes g_1
			) e
		GROUP BY
			e.RowNumber,
			e.Year_1
	) t1
WHERE
	t1.RowNumber = 1
ORDER BY
	t1.RowNumber_1 DESC

-- Informix.DB2 Informix
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

