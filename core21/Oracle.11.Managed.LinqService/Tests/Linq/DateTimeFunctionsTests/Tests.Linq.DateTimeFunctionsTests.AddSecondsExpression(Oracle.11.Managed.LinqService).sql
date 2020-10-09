BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @p1 Int32
SET     @p1 = -35

SELECT 
	t.DateTimeValue + :p1 * INTERVAL '1' SECOND
FROM
	LinqDataTypes t

