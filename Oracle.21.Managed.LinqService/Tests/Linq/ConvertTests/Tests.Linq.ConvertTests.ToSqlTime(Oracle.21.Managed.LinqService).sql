BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	EXTRACT(HOUR FROM t."DateTimeValue") || ':01:01'
FROM
	"LinqDataTypes" t

