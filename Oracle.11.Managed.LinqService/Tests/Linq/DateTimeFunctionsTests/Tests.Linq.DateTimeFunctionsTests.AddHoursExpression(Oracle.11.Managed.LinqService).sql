BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Hour Int32
SET     @Hour = 22

SELECT
	EXTRACT(HOUR FROM (t."DateTimeValue" + :Hour * INTERVAL '1' HOUR))
FROM
	"LinqDataTypes" t

