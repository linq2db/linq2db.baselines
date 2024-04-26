BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	MOD(EXTRACT(HOUR FROM t."DateTimeValue"), 7)
FROM
	"LinqDataTypes" t

