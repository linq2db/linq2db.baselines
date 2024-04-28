BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = -35

SELECT
	EXTRACT(SECOND FROM (t."DateTimeValue" + :p * INTERVAL '1' SECOND))
FROM
	"LinqDataTypes" t

