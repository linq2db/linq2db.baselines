BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	Mod(1 + Trunc(t."DateTimeValue") - Trunc(t."DateTimeValue", 'IW'), 7) + 1
FROM
	"LinqDataTypes" t

