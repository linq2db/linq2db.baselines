BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.ID,
	Count(*),
	Sum(1000 * (EXTRACT(SECOND FROM CAST (t1."DateTimeValue" as TIMESTAMP) - CAST (t1."DateTimeValue" as TIMESTAMP)) + 60 * (EXTRACT(MINUTE FROM CAST (t1."DateTimeValue" as TIMESTAMP) - CAST (t1."DateTimeValue" as TIMESTAMP)) + 60 * (EXTRACT(HOUR FROM CAST (t1."DateTimeValue" as TIMESTAMP) - CAST (t1."DateTimeValue" as TIMESTAMP)) + 24 * EXTRACT(DAY FROM CAST (t1."DateTimeValue" as TIMESTAMP) - CAST (t1."DateTimeValue" as TIMESTAMP)))))),
	Max(1000 * (EXTRACT(SECOND FROM CAST (t1."DateTimeValue" as TIMESTAMP) - CAST (t1."DateTimeValue" as TIMESTAMP)) + 60 * (EXTRACT(MINUTE FROM CAST (t1."DateTimeValue" as TIMESTAMP) - CAST (t1."DateTimeValue" as TIMESTAMP)) + 60 * (EXTRACT(HOUR FROM CAST (t1."DateTimeValue" as TIMESTAMP) - CAST (t1."DateTimeValue" as TIMESTAMP)) + 24 * EXTRACT(DAY FROM CAST (t1."DateTimeValue" as TIMESTAMP) - CAST (t1."DateTimeValue" as TIMESTAMP))))))
FROM
	"LinqDataTypes" t1
GROUP BY
	t1.ID

