BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	(CAST ((t.DateTimeValue + 1D * INTERVAL '1' SECOND) as DATE) - CAST (t.DateTimeValue as DATE)) * 86400000
FROM
	LinqDataTypes t

