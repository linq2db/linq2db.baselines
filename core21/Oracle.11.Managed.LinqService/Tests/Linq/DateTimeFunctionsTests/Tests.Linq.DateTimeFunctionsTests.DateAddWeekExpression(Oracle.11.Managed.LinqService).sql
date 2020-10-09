BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @p1 Int32
SET     @p1 = -1

SELECT 
	t.DateTimeValue + :p1 * INTERVAL '7' DAY
FROM
	LinqDataTypes t

