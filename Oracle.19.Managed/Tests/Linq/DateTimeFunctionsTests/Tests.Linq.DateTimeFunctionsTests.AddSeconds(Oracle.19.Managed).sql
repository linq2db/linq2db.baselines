BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	To_Number(To_Char((t."DateTimeValue" + -35D * INTERVAL '1' SECOND), 'SS'))
FROM
	"LinqDataTypes" t

