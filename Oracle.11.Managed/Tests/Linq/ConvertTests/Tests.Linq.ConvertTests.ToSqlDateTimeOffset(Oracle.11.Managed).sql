-- Oracle.11.Managed Oracle11

SELECT
	CAST(EXTRACT(YEAR FROM t."DateTimeValue") AS VarChar(11)) || '-01-01 00:20:00'
FROM
	"LinqDataTypes" t

