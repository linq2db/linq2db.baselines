BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	To_Number(To_Char(t."DateTimeValue" + -8D * INTERVAL '1' MINUTE, 'MI'))
FROM
	"LinqDataTypes" t

