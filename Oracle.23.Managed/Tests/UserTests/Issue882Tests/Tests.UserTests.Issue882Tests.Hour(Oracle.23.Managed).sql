-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	MOD(EXTRACT(HOUR FROM t."DateTimeValue"), 7)
FROM
	"LinqDataTypes" t

