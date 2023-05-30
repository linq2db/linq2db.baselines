BeforeExecute
-- Informix.DB2 Informix
DECLARE @Date Timestamp(16) -- DateTime
SET     @Date = TO_DATE('2020-02-29', '%Y-%m-%d')

SELECT
	t1_1.MoneyValue
FROM
	LinqDataTypes t1_1
		INNER JOIN (
			SELECT
				sub.ID,
				Max(sub.DateTimeValue) as DateTimeValue
			FROM
				LinqDataTypes sub
			WHERE
				sub.ID = 1 AND sub.DateTimeValue <= @Date
			GROUP BY
				sub.ID
		) t1 ON t1_1.ID = t1.ID AND t1_1.DateTimeValue = t1.DateTimeValue

