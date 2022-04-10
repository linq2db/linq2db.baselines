BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	MOD((to_Number(To_Char(t."DateTimeValue", 'FF'))) / 1000, 7)
FROM
	"LinqDataTypes" t

