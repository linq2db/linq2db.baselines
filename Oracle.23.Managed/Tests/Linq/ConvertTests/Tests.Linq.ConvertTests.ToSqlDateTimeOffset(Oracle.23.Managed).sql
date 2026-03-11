-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	CAST(EXTRACT(YEAR FROM t."DateTimeValue") AS VarChar(255)) || '-01-01 00:20:00'
FROM
	"LinqDataTypes" t

