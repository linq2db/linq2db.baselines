BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p_1 Int32
SET     @p_1 = 22

SELECT
	To_Number(To_Char((t."DateTimeValue" + :p_1 * INTERVAL '1' HOUR), 'HH24'))
FROM
	"LinqDataTypes" t

