BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Second Int32
SET     @Second = -35

SELECT
	EXTRACT(SECOND FROM (t."DateTimeValue" + :Second * INTERVAL '1' SECOND))
FROM
	"LinqDataTypes" t

