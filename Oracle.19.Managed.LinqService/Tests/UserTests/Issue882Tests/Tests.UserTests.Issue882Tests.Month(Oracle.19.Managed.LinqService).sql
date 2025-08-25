BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	MOD(EXTRACT(MONTH FROM t."DateTimeValue"), 7)
FROM
	"LinqDataTypes" t

