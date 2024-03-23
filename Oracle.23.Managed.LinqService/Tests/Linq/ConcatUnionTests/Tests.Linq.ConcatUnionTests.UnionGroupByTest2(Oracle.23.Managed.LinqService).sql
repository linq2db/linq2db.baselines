BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t2."month_1",
	t2."month_1",
	t2."int_1"
FROM
	(
		SELECT
			Cast(t1."SmallIntValue" as Int) as "month_1",
			3 as "int_1"
		FROM
			"LinqDataTypes" t1
	) t2
UNION
SELECT
	t4."Month_1",
	t4."Year_1",
	1
FROM
	(
		SELECT
			To_Number(To_Char(t3."DateTimeValue", 'MM')) as "Month_1",
			To_Number(To_Char(t3."DateTimeValue", 'YYYY')) as "Year_1"
		FROM
			"LinqDataTypes" t3
	) t4
GROUP BY
	t4."Month_1",
	t4."Year_1"
UNION
SELECT
	To_Number(To_Char(t5."DateTimeValue", 'YYYY')),
	To_Number(To_Char(t5."DateTimeValue", 'YYYY')),
	2
FROM
	"LinqDataTypes" t5

