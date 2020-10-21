BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	(CAST ((t.DateTimeValue + 1D * INTERVAL '1' SECOND) as DATE) - CAST (t.DateTimeValue as DATE)) * 86400000
FROM
	LinqDataTypes t

