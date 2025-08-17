BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	MOD(TRUNC(t."DateTimeValue") - TRUNC(t."DateTimeValue", 'IW') + 1, 7) + 1
FROM
	"LinqDataTypes" t

