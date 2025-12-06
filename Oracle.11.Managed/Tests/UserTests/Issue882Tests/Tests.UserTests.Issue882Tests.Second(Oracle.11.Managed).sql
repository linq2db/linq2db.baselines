-- Oracle.11.Managed Oracle11

SELECT
	MOD(EXTRACT(SECOND FROM t."DateTimeValue"), 7)
FROM
	"LinqDataTypes" t

