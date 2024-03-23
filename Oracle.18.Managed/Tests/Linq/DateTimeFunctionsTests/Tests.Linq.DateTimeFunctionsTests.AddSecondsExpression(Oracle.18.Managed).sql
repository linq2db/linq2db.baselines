BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = -35

SELECT
	To_Number(To_Char((t."DateTimeValue" + :p * INTERVAL '1' SECOND), 'SS'))
FROM
	"LinqDataTypes" t

