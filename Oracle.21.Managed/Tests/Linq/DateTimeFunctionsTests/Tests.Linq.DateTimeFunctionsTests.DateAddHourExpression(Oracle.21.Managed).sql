BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT
	To_Number(To_Char((t."DateTimeValue" + :p * INTERVAL '1' HOUR), 'HH24'))
FROM
	"LinqDataTypes" t

