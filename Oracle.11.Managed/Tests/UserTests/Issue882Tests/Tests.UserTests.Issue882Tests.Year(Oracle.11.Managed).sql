BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	MOD(EXTRACT(YEAR FROM t."DateTimeValue"), 7)
FROM
	"LinqDataTypes" t

