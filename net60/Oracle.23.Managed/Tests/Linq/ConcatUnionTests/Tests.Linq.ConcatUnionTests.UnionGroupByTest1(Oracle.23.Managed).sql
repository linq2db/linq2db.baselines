BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."month_1",
	t1."year_1",
	1
FROM
	(
		SELECT
			To_Number(To_Char(selectParam."DateTimeValue", 'MM')) as "month_1",
			To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')) as "year_1"
		FROM
			"LinqDataTypes" selectParam
	) t1
GROUP BY
	t1."month_1",
	t1."year_1"
UNION
SELECT
	t2."SmallIntValue",
	t2."SmallIntValue",
	3
FROM
	"LinqDataTypes" t2
UNION
SELECT
	To_Number(To_Char(t3."DateTimeValue", 'YYYY')),
	To_Number(To_Char(t3."DateTimeValue", 'YYYY')),
	2
FROM
	"LinqDataTypes" t3

