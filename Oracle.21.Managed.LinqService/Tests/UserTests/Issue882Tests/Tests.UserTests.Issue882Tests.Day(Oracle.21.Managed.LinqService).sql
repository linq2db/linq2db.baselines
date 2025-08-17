BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	MOD(EXTRACT(DAY FROM t."DateTimeValue"), 7)
FROM
	"LinqDataTypes" t

