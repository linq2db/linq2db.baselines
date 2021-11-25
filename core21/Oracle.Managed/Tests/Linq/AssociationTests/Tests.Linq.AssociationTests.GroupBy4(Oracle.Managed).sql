BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	To_Number(To_Char(selectParam."DateTimeValue", 'YYYY'))
FROM
	"LinqDataTypes" selectParam
GROUP BY
	To_Number(To_Char(selectParam."DateTimeValue", 'YYYY'))

