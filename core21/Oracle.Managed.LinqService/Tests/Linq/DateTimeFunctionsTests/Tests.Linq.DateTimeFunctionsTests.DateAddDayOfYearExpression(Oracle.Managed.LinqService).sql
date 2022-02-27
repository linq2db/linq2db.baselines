BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p1 Int32
SET     @p1 = 3

SELECT
	t.DateTimeValue + :p1 * INTERVAL '1' DAY
FROM
	LinqDataTypes t

