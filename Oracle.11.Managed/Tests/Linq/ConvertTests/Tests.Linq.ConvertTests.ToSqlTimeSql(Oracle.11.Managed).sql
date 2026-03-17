-- Oracle.11.Managed Oracle11

SELECT
	CAST(EXTRACT(HOUR FROM t."DateTimeValue") AS VarChar(255)) || ':01:01'
FROM
	"LinqDataTypes" t

