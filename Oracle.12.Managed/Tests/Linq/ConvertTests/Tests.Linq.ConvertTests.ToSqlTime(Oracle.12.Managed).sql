BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	EXTRACT(HOUR FROM t."DateTimeValue") || ':01:01'
FROM
	"LinqDataTypes" t

