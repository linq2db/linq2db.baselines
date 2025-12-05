-- Oracle.11.Managed Oracle11

SELECT
	MOD(EXTRACT(DAY FROM t."DateTimeValue"), 7)
FROM
	"LinqDataTypes" t

