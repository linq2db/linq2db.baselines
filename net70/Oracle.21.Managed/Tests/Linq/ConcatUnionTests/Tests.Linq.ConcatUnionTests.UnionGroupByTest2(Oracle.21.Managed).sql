BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."SmallIntValue",
	t1."SmallIntValue",
	3
FROM
	"LinqDataTypes" t1
UNION
SELECT
	To_Number(To_Char(selectParam."DateTimeValue", 'MM')),
	To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')),
	1
FROM
	"LinqDataTypes" selectParam
GROUP BY
	To_Number(To_Char(selectParam."DateTimeValue", 'MM')),
	To_Number(To_Char(selectParam."DateTimeValue", 'YYYY'))
UNION
SELECT
	To_Number(To_Char(t2."DateTimeValue", 'YYYY')),
	To_Number(To_Char(t2."DateTimeValue", 'YYYY')),
	2
FROM
	"LinqDataTypes" t2

