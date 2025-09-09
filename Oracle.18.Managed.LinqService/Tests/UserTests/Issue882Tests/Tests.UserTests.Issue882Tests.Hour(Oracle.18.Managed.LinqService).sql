BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	MOD(EXTRACT(HOUR FROM t."DateTimeValue"), 7)
FROM
	"LinqDataTypes" t

