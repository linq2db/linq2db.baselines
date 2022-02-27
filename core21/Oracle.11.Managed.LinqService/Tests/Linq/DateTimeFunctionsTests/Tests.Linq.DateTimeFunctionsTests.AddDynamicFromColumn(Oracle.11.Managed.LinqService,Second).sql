BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t.DateTimeValue + t.SmallIntValue * INTERVAL '1' SECOND
FROM
	LinqDataTypes t

