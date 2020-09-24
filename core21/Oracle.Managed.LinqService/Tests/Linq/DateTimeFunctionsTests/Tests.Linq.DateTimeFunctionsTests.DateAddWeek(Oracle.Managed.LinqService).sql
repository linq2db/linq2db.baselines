BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t.DateTimeValue + -1 * INTERVAL '7' DAY
FROM
	LinqDataTypes t

