BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.ID,
	Count(*),
	Sum((CAST (t1.DateTimeValue as DATE) - CAST (t1.DateTimeValue as DATE)) * 86400000),
	Max((CAST (t1.DateTimeValue as DATE) - CAST (t1.DateTimeValue as DATE)) * 86400000)
FROM
	LinqDataTypes t1
GROUP BY
	t1.ID

