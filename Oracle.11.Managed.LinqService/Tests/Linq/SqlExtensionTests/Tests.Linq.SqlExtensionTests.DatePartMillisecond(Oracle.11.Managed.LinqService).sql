BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	(to_Number(To_Char(t."DateTimeValue", 'FF'))) / 1000
FROM
	"LinqDataTypes" t

