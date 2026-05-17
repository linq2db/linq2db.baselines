-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	EXTRACT(HOUR FROM (t."DateTimeValue" + INTERVAL '1' HOUR))
FROM
	"LinqDataTypes" t

