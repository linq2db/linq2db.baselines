BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."SmallIntValue",
	t1."SmallIntValue",
	3
FROM
	"LinqDataTypes" t1
UNION
SELECT
	t2."month_1",
	t2."year_1",
	t2."int_1"
FROM
	(
		SELECT
			To_Number(To_Char(selectParam."DateTimeValue", 'MM')) as "month_1",
			To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')) as "year_1",
			1 as "int_1"
		FROM
			"LinqDataTypes" selectParam
		GROUP BY
			To_Number(To_Char(selectParam."DateTimeValue", 'MM')),
			To_Number(To_Char(selectParam."DateTimeValue", 'YYYY'))
	) t2
UNION
SELECT
	To_Number(To_Char(t3."DateTimeValue", 'YYYY')),
	To_Number(To_Char(t3."DateTimeValue", 'YYYY')),
	2
FROM
	"LinqDataTypes" t3

