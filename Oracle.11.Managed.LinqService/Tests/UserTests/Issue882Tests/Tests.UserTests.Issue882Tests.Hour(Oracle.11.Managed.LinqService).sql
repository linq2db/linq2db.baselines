BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	MOD(EXTRACT(HOUR FROM t."DateTimeValue"), 7)
FROM
	"LinqDataTypes" t

