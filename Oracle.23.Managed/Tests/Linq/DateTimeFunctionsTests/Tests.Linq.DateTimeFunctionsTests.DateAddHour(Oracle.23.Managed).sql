-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	EXTRACT(HOUR FROM (t."DateTimeValue" + INTERVAL '1' HOUR))
FROM
	"LinqDataTypes" t

