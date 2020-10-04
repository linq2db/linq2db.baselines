BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p1 Int32
SET     @p1 = 2

SELECT
	t.DateTimeValue + :p1 * INTERVAL '1' MONTH
FROM
	LinqDataTypes t

