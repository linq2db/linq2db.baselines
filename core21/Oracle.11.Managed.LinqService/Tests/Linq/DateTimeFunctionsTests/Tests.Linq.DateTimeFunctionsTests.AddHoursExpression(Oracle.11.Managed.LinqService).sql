BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @p1 Int32
SET     @p1 = 22

SELECT 
	t.DateTimeValue + :p1 * INTERVAL '1' HOUR
FROM
	LinqDataTypes t

