BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	To_Number(To_Char(selectParam."DateTimeValue", 'YYYY'))
FROM
	"LinqDataTypes" selectParam
GROUP BY
	To_Number(To_Char(selectParam."DateTimeValue", 'YYYY'))

