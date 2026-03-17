-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	CAST(EXTRACT(HOUR FROM t."DateTimeValue") AS VarChar(255)) || ':01:01'
FROM
	"LinqDataTypes" t

