-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	MOD(EXTRACT(SECOND FROM t."DateTimeValue"), 7)
FROM
	"LinqDataTypes" t

